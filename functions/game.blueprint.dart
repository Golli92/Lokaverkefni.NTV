//Byrjunar Herbergi
chamber/darkroom  = room0;
('you start waking up and find yourself alone in a dark room.\n '
' only small light from old and broken chandelier lihgt up the room.\n'
'you look around and see some old cabinets and desk.\n')
// leikmaður velja look around, exit trough the door
// ef leikmaður velur look around finnur hann vasaljós.
item vasaljós og lykill

hallway = room1;
// ef leikmaður finnur ekki vasaljós þá getur hann ekki haldið áfram og séð the hallway
// shit kannski of mikið vesen??
('You enter a long Hallway with xx doors\n '
'you see that the doors are marked with old bronze labels and you look at them all\n '
'')
// herbergin koma upp og leikmaður velur eitt þeirra.

Kitchen = room2
('you enter a typical old kitchen with dark brown wooden decor')
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur
wich will you take
items = gallon of water, gallon of milk and gallon of soda;
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur

Libery = room3
('you walk in and see big sky window where the moonlight hit you and light the room up.\n'
'bookshelves cover every wall filled with old books and dust. In the middle of the room is some old showcases\n.'
lookaround = ('you see one of the showcases is open and inside are two knifes')
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur
wich will you take
items = medium ish hunting knife, big hunting knife
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur

Bedroom = room4
('there is massive bed in the middle of the room and pentagon carved in the selling above it and some satanic symbols all over the walls\n'
'the room gives you bad wipe')
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur
no item here
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur

toilet = room5
('the smell in awful you almost puke. you notice that the bathtub is full of ligth green liquid.\n')
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur
no item here
('after closer look you see a key on the bottom in the bathtub\n')
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur eða action
use your hands to get it = the acid eat you flesh of your arm and blood poor out of you = rip
use item on the bathtub (if milk is used then acid will be nutrulized) = get the key
// leikmaður velja look around, eða nýtt herbergi = herbergin koma upp aftur

looby = room6
('the door is locked need a key')
//ef leikmaðurinn er komin með lykillin án þess að deyja á klósetinu
(' you open the door to bright room were a man stands wearing pig mask on\n'
'what will you do\n')
// attack = you will need a knife from the kitchen
// try to run around him = the man knock you unconsciousness and you wake up in agony and come to discover the man is lowering you in acid bath = rip

