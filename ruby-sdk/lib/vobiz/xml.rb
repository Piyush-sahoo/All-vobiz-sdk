require 'cgi'

module Vobiz
  module XML
    module_function

    def play(audio_url, continue_url = nil)
      next_element = continue_url ? "\n  <Redirect>#{esc(continue_url)}</Redirect>" : ''
      wrap("<Play>#{esc(audio_url)}</Play>#{next_element}")
    end

    def wait(length: 1, silence: false, min_silence: 2000, beep: false, prompt: nil)
      attrs = [
        %(length="#{length}"),
        silence ? %(silence="#{silence}") : nil,
        silence ? %(minSilence="#{min_silence}") : nil,
        beep ? %(beep="#{beep}") : nil
      ].compact.join(' ')

      prompt_xml = prompt ? "\n  <Speak voice=\"WOMAN\" language=\"en-US\">#{esc(prompt)}</Speak>" : ''
      wrap("#{prompt_xml}\n  <Wait #{attrs}/>")
    end

    def hangup(reason: nil, schedule: nil, prompt: nil)
      attrs = [
        reason ? %(reason="#{esc(reason)}") : nil,
        schedule ? %(schedule="#{esc(schedule)}") : nil
      ].compact.join(' ')
      prompt_xml = prompt ? "\n  <Speak>#{esc(prompt)}</Speak>" : ''
      attrs = attrs.empty? ? '' : " #{attrs}"
      wrap("#{prompt_xml}\n  <Hangup#{attrs}/>")
    end

    def redirect(url)
      wrap("<Redirect>#{esc(url)}</Redirect>")
    end

    def dtmf(digits: '123', async: false)
      async_attr = async ? %( async="#{async}") : ''
      wrap("<DTMF digits=\"#{esc(digits)}\"#{async_attr}/>")
    end

    def preanswer(audio_url: nil)
      inner = audio_url ? "\n    <Play>#{esc(audio_url)}</Play>\n  " : ''
      wrap("<PreAnswer>#{inner}</PreAnswer>")
    end

    def stream(stream_url:, bidirectional: true, stream_timeout: 600, status_callback_url: nil)
      attrs = [
        %(url="#{esc(stream_url)}"),
        %(bidirectional="#{bidirectional}"),
        %(streamTimeout="#{stream_timeout}"),
        status_callback_url ? %(statusCallbackUrl="#{esc(status_callback_url)}") : nil
      ].compact.join(' ')
      wrap("<Stream #{attrs}/>")
    end

    def conference(conference_name: 'conference-1', action_url: nil)
      action_attr = action_url ? %( action="#{esc(action_url)}") : ''
      wrap("<Conference#{action_attr}>#{esc(conference_name)}</Conference>")
    end

    def dial(phone_number: '+14155551234', action_url: nil, method: 'POST', hangup_on_star: false,
             time_limit: 14_400, timeout: nil, caller_id: nil, caller_name: nil,
             confirm_sound: nil, confirm_key: nil, dial_music: 'real', callback_url: nil,
             callback_method: 'POST', redirect: true, send_digits: nil)
      attrs = [
        action_url ? %(action="#{esc(action_url)}") : nil,
        action_url ? %(method="#{method}") : nil,
        action_url ? %(redirect="#{redirect}") : nil,
        hangup_on_star ? %(hangupOnStar="#{hangup_on_star}") : nil,
        time_limit ? %(timeLimit="#{time_limit}") : nil,
        timeout ? %(timeout="#{timeout}") : nil,
        caller_id ? %(callerId="#{esc(caller_id)}") : nil,
        caller_name ? %(callerName="#{esc(caller_name)}") : nil,
        confirm_sound ? %(confirmSound="#{esc(confirm_sound)}") : nil,
        confirm_key ? %(confirmKey="#{esc(confirm_key)}") : nil,
        dial_music ? %(dialMusic="#{esc(dial_music)}") : nil,
        callback_url ? %(callbackUrl="#{esc(callback_url)}") : nil,
        callback_url ? %(callbackMethod="#{callback_method}") : nil
      ].compact.join(' ')

      number_attr = send_digits ? %( sendDigits="#{esc(send_digits)}") : ''
      wrap("<Dial #{attrs}>\n    <Number#{number_attr}>#{esc(phone_number)}</Number>\n  </Dial>")
    end

    def gather(action_url: nil, method: 'POST', input_type: 'dtmf', execution_timeout: 15,
               digit_end_timeout: 'auto', speech_end_timeout: 'auto', finish_on_key: '#',
               num_digits: 1, speech_model: 'default', language: 'en-US',
               interim_speech_results_callback: nil, log: true, redirect: true,
               profanity_filter: false, prompt: 'Please press a digit or speak your input.')
      attrs = [
        action_url ? %(action="#{esc(action_url)}") : nil,
        action_url ? %(method="#{method}") : nil,
        %(inputType="#{input_type}"),
        %(executionTimeout="#{execution_timeout}"),
        %(digitEndTimeout="#{digit_end_timeout}"),
        %(speechEndTimeout="#{speech_end_timeout}"),
        %(finishOnKey="#{esc(finish_on_key)}"),
        %(numDigits="#{num_digits}"),
        %(speechModel="#{speech_model}"),
        %(language="#{language}"),
        %(log="#{log}"),
        %(redirect="#{redirect}"),
        %(profanityFilter="#{profanity_filter}"),
        interim_speech_results_callback ? %(interimSpeechResultsCallback="#{esc(interim_speech_results_callback)}") : nil
      ].compact.join(' ')

      wrap("<Gather #{attrs}>\n    <Speak voice=\"WOMAN\" language=\"en-US\">#{esc(prompt)}</Speak>\n  </Gather>")
    end

    def record(action_url: nil, method: 'POST', file_format: 'mp3', redirect: false, timeout: 60,
               max_length: 60, play_beep: true, finish_on_key: '#', record_session: false,
               start_on_dial_answer: false, transcription_type: 'auto', transcription_url: nil,
               transcription_method: 'POST', callback_url: nil, callback_method: 'POST',
               prompt: 'Please leave your message after the beep. Press hash when done.')
      attrs = [
        action_url ? %(action="#{esc(action_url)}") : nil,
        action_url ? %(method="#{method}") : nil,
        action_url ? %(redirect="#{redirect}") : nil,
        %(fileFormat="#{file_format}"),
        %(timeout="#{timeout}"),
        %(maxLength="#{max_length}"),
        %(playBeep="#{play_beep}"),
        %(finishOnKey="#{esc(finish_on_key)}"),
        %(recordSession="#{record_session}"),
        %(startOnDialAnswer="#{start_on_dial_answer}"),
        %(transcriptionType="#{transcription_type}"),
        transcription_url ? %(transcriptionUrl="#{esc(transcription_url)}") : nil,
        transcription_url ? %(transcriptionMethod="#{transcription_method}") : nil,
        callback_url ? %(callbackUrl="#{esc(callback_url)}") : nil,
        callback_url ? %(callbackMethod="#{callback_method}") : nil
      ].compact.join(' ')

      wrap("<Speak voice=\"WOMAN\" language=\"en-US\">#{esc(prompt)}</Speak>\n  <Record #{attrs}/>")
    end

    def speak(text: 'Hello', voice: 'WOMAN', language: 'en-US', loop: 1, use_ssml: false, ssml_content: nil)
      content = use_ssml && ssml_content ? ssml_content : esc(text)
      loop_attr = loop.nil? ? '' : %( loop="#{loop}")
      wrap("<Speak voice=\"#{voice}\" language=\"#{language}\"#{loop_attr}>#{content}</Speak>")
    end

    def ssml(text: 'Hello', rate: 'medium', breaks: 1, spell_out: false)
      break_tags = Array.new(breaks, '<break/>').join
      content = spell_out ? %(<say-as interpret-as="spell-out">#{esc(text)}</say-as>) : esc(text)
      %(<prosody rate="#{esc(rate)}">#{content}#{break_tags}</prosody>)
    end

    def speak_and_wait(text: 'Hello', wait_length: 1, voice: 'WOMAN', language: 'en-US')
      wrap("<Speak voice=\"#{voice}\" language=\"#{language}\">#{esc(text)}</Speak>\n  <Wait length=\"#{wait_length}\"/>")
    end

    def wrap(inner)
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Response>\n  #{inner}\n</Response>"
    end

    def esc(value)
      CGI.escapeHTML(value.to_s)
    end
  end
end
