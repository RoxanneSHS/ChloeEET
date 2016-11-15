:: Isaya : complete change to operate from the Chloe directory instead of copying first to the override
@echo off

:: Sounds

:sounds_check

IF NOT EXIST "override\chloe0.wav" goto sounds_add

goto music_check

:sounds_add


oggdec c*.ogg

"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe0.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe1.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe2.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe3.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe8.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe9.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloea.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeb.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloec.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloed.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloee.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloef.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg10.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg11.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg12.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg13.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg14.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeg15.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp1.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp2.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp3.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp4.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp5.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp6.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp7.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp8.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloegp9.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeh.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloei.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloej.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloek.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel1.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel2.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel3.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel4.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel5.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel6.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel6b.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel6c.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel7.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel8.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloel8b.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloem.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloen.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeo.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloep.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeq.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloer.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloes.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloet.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloeu.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloev.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloew.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloex.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloey.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloez.ogg"
"Chloe\Sounds\oggdec.exe" "Chloe\Sounds\chloe_.ogg"

:: Move the resulting wav files to the Override directory
move "Chloe\Sounds\c*.wav" "override" > nul

:: Music

:music_check

IF NOT EXIST "override\ChGTKUCR.wav" goto music_add

goto end

:music_add

"Chloe\Sounds\oggdec.exe" "Chloe\Music\ChGTKUCR.crm"
"Chloe\Sounds\oggdec.exe" "Chloe\Music\ChImCR.crm"
"Chloe\Sounds\oggdec.exe" "Chloe\Music\ChLoveCR.crm"

:: Move the resulting wav files to the Override directory
move "Chloe\Music\ChGTKUCR.wav" "override" > nul
move "Chloe\Music\ChImCR.wav" "override" > nul
move "Chloe\Music\ChLoveCR.wav" "override" > nul

:end
