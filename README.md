DCFloatLabel
============

Commentaires en Float Label
En général, je ne glose pas trop sur les plugins que j'utilise pour mon blog. Là, c'est la vue de ce billet qui me donne envie de me croire webdesigner
http://dribbble.com/shots/1254439--GIF-Mobile-Form-Interaction

Je vais tenter d'insérer dans l'excellent thème de Dotclear qui a la class de la simplicité, l'élégance du responsive, le style de la personnalisation et la french touch de Kozlika.

Première mauvaise surprise, je ne connais aucun sélecteur css pour targeter un élement <input> ou <textarea> tant qu'il est vide. J'ai du le faire en JS. Bien évidemment, c'est juste une modification de class, l'effet est en transitions css

En soit, le système fonctionne.

Sauf que j'ai un autre souci :  :invalid s'applique au chargement de page, pas uniquement si le champ a été changé
https://developer.mozilla.org/fr/docs/CSS/:invalid
Les pseudo-propriétés proriétaires :-moz-ui-invalid  et :-moz-submit-invalid  seraient parfaites, mais je veux que ça marche sur tous les navigateurs modernes d'un coup sans me prendre la tête.

Donc, il me faut un autre polyfill javascript qui mettra au formulaire la class modified

Aujourd'hui, un excellent article à lire
http://bradfrostweb.com/blog/post/float-label-pattern/
Tellement bien raisonné et empli de bon sens que je vais le lire de très très près avant de continuer
