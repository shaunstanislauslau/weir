#!/usr/bin/sbcl --script

(load "../src/load")
(asdf:load-system "weir")
(load "../utils/test")

(rnd:set-rnd-state 1)

(defun test-curve ()
(let* ((pts (list (vec:vec -20.0d0 99.0d0)
                  (vec:vec 0.0d0 1.0d0)
                  (vec:vec 10.0d0 20.0d0)
                  (vec:vec 100.0d0 100.0d0)))
       (bz (to-vector (bzspl:pos* (bzspl:make pts)
                                  (math:linspace 10 0d0 1d0))
                      :type 'vec:vec)))

    (do-test
      (curvature:offset-paths bz
        :spacefx (lambda (n)
                   (mapcar (lambda (a) (expt a 0.7d0))
                           (rnd:rndspace n 0d0 1d0)))
        :curvefx (lambda (c) (* 100d0 (tanh (* 500d0 c))))
        :rs 0.2d0)
      '((6
         (#s(vec:vec :x -22.50286178734859d0 :y 27.84520993024783d0)
          #s(vec:vec :x -17.638236186861782d0 :y 59.35690789387938d0)
          #s(vec:vec :x -17.638236186861782d0 :y 59.35690789387938d0)))
        (6
         (#s(vec:vec :x -7.96026237317766d0 :y 32.27764226257859d0)
          #s(vec:vec :x -12.779093048112387d0 :y 60.52935530001194d0)
          #s(vec:vec :x -12.779093048112387d0 :y 60.52935530001194d0)))
        (6
         (#s(vec:vec :x -26.415061498466333d0 :y 26.65281234050222d0)
          #s(vec:vec :x -18.945426039397436d0 :y 59.04150015466166d0)
          #s(vec:vec :x -18.945426039397436d0 :y 59.04150015466166d0)))
        (6
         (#s(vec:vec :x -19.285632300812328d0 :y 28.82578785792942d0)
          #s(vec:vec :x -16.563257901339355d0 :y 59.616286032477284d0)
          #s(vec:vec :x -16.563257901339355d0 :y 59.616286032477284d0)))
        (6
         (#s(vec:vec :x -25.558925522025838d0 :y 26.913753639562458d0)
          #s(vec:vec :x -18.659363889345805d0 :y 59.11052319354812d0)
          #s(vec:vec :x -18.659363889345805d0 :y 59.11052319354812d0)))
        (6
         (#s(vec:vec :x -19.568940283661654d0 :y 28.739438545304804d0)
          #s(vec:vec :x -16.657920072922916d0 :y 59.593445294025486d0)
          #s(vec:vec :x -16.657920072922916d0 :y 59.593445294025486d0)))
        (20
         (#s(vec:vec :x -12.388435995827159d0 :y 8.936341229357934d0)
          #s(vec:vec :x -9.394707903523855d0 :y 31.840438254780764d0)))
        (20
         (#s(vec:vec :x -77.81658164620772d0 :y -28.956407216808415d0)
          #s(vec:vec :x -31.626833542855532d0 :y 25.064318684012044d0)))
        (20
         (#s(vec:vec :x -73.38629846102475d0 :y -26.390606144308627d0)
          #s(vec:vec :x -30.12144757460391d0 :y 25.523144595961014d0)))
        (20
         (#s(vec:vec :x -26.513836767296098d0 :y 0.7556071918276608d0)
          #s(vec:vec :x -14.194441741852245d0 :y 30.37752953772857d0)))
        (20
         (#s(vec:vec :x -68.0610749415144d0 :y -23.30649985887792d0)
          #s(vec:vec :x -28.311965781005355d0 :y 26.07465573769642d0)))
        (20
         (#s(vec:vec :x -38.86427158802612d0 :y -6.397154287359612d0)
          #s(vec:vec :x -18.39105186896884d0 :y 29.098446625254716d0)))
        (20
         (#s(vec:vec :x -13.890240401366675d0 :y 8.066570338118831d0)
          #s(vec:vec :x -9.90501281737651d0 :y 31.684902649687793d0)))
        (20
         (#s(vec:vec :x -23.949225631983154d0 :y 2.240903216140177d0)
          #s(vec:vec :x -13.323000920634737d0 :y 30.643135593542326d0)))
        (20
         (#s(vec:vec :x -70.12213921641231d0 :y -24.50016642735161d0)
          #s(vec:vec :x -29.012304136231258d0 :y 25.861199925508558d0)))
        (20
         (#s(vec:vec :x -67.840028036227d0 :y -23.178480415661276d0)
          #s(vec:vec :x -28.236855252933918d0 :y 26.09754864175303d0)))
        (20
         (#s(vec:vec :x -42.39951484460498d0 :y -8.444592466845435d0)
          #s(vec:vec :x -19.592308170283626d0 :y 28.732316257655146d0)))
        (20
         (#s(vec:vec :x -59.68051229507874d0 :y -18.452892148586997d0)
          #s(vec:vec :x -25.46429648162695d0 :y 26.942595582209435d0)))
        (20
         (#s(vec:vec :x -79.04634900975685d0 :y -29.668627697628374d0)
          #s(vec:vec :x -32.044701759382235d0 :y 24.936956818307245d0)))
        (20
         (#s(vec:vec :x -57.980049637272586d0 :y -17.468068215494633d0)
          #s(vec:vec :x -24.88648858140995d0 :y 27.118705392144946d0)))
        (20
         (#s(vec:vec :x -43.28736223045941d0 :y -8.958789794560357d0)
          #s(vec:vec :x -19.893993850576983d0 :y 28.6403656148952d0)))
        (20
         (#s(vec:vec :x -34.01486149855628d0 :y -3.5886156255044916d0)
          #s(vec:vec :x -16.74324887357539d0 :y 29.60067975882892d0)))
        (20
         (#s(vec:vec :x -18.472839505248547d0 :y 5.412555413090722d0)
          #s(vec:vec :x -11.462154900794213d0 :y 31.210302014683847d0)))
        (20
         (#s(vec:vec :x -72.92175901351273d0 :y -26.12156785424375d0)
          #s(vec:vec :x -29.963599613931148d0 :y 25.571255004874338d0)))
        (20
         (#s(vec:vec :x -38.96632872456455d0 :y -6.45626073709229d0)
          #s(vec:vec :x -18.425730325149413d0 :y 29.08787699419823d0)))
        (20
         (#s(vec:vec :x -10.834911002462185d0 :y 9.836066128990158d0)
          #s(vec:vec :x -8.866828617124867d0 :y 32.00133034497494d0)))
        (4
         (#s(vec:vec :x -1.82275681468529d0 :y 22.008628889856077d0)
          #s(vec:vec :x 64.2827254173134d0 :y -45.897478747810936d0)
          #s(vec:vec :x -68.05786431485377d0 :y -23.30464042258798d0)))
        (4
         (#s(vec:vec :x 1.3191960849431217d0 :y 19.026201192637053d0)
          #s(vec:vec :x 43.094801299611156d0 :y -26.446269721723613d0)
          #s(vec:vec :x -44.254164223209074d0 :y -9.518713728585258d0)))
        (4
         (#s(vec:vec :x 1.7094989196499624d0 :y 18.655715058147116d0)
          #s(vec:vec :x 40.46277366938454d0 :y -24.0299820611877d0)
          #s(vec:vec :x -41.2971970378069d0 :y -7.806184470630335d0)))
        (4
         (#s(vec:vec :x -2.49525206840463d0 :y 22.646979792945075d0)
          #s(vec:vec :x 68.81773242108022d0 :y -50.060763866023095d0)
          #s(vec:vec :x -73.15274506067362d0 :y -26.255343557232685d0)))
        (6
         (#s(vec:vec :x 14.676033548020749d0 :y 27.916113002602597d0)
          #s(vec:vec :x 5.334878535039375d0 :y 15.214405489455176d0)))
        (6
         (#s(vec:vec :x 1.991960700025368d0 :y 41.204189319550146d0)
          #s(vec:vec :x -2.1306749221174055d0 :y 22.300913186094068d0)))
        (6
         (#s(vec:vec :x 3.4473574845049715d0 :y 39.679487926285795d0)
          #s(vec:vec :x -1.2740618589384312d0 :y 21.487792618396586d0)))
        (6
         (#s(vec:vec :x 8.480081740589151d0 :y 34.40711013419761d0)
          #s(vec:vec :x 1.688083850817879d0 :y 18.676042827678675d0)))
        (6
         (#s(vec:vec :x 12.088455517221544d0 :y 30.626909034868433d0)
          #s(vec:vec :x 3.8118896382554093d0 :y 16.660068239161813d0)))
        (6
         (#s(vec:vec :x 9.908978900659733d0 :y 32.910170252218904d0)
          #s(vec:vec :x 2.5290998447438646d0 :y 17.877727425055774d0)))
        (2
         (#s(vec:vec :x 33.08392467503042d0 :y 46.859928529419754d0)
          #s(vec:vec :x 4.727147054476696d0 :y 38.33875599583923d0)))
        (2
         (#s(vec:vec :x 36.77524734379244d0 :y 42.83105128032847d0)
          #s(vec:vec :x 17.72539454936432d0 :y 24.721544334528378d0)))
        (1
         (#s(vec:vec :x 62.98544550459994d0 :y 69.27890804402944d0)
          #s(vec:vec :x 33.820284649794424d0 :y 46.05623180180123d0)))
        (1
         (#s(vec:vec :x 62.30300423363179d0 :y 70.04067851585687d0)
          #s(vec:vec :x 62.30300423363179d0 :y 70.04067851585687d0)))))))



(defun main ()
  (test-title (test-curve))
  (test-title (test-summary)))

(main)

