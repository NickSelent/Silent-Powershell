Add-Type -AssemblyName System.speech
$tts = New-Object System.Speech.Synthesis.SpeechSynthesizer

$Phrase = '
<speak version="1.0" xmlns="http://www.w3.org/2001/10/synthesis" xml:lang="en-US">
    <voice xml:lang="en-US" name="Microsoft Zira Desktop">
    <prosody rate="1" pitch="high">
        <p>Your barn door is open.</p>
    </prosody>
    </voice>
</speak>
'
$tts.SpeakSsml($Phrase)