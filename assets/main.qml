// PostCarder
// Author Louis Meadows
// November 4th 2012
// Developed from QML sample code located here
// https://developer.blackberry.com/cascades/documentation/ui/custom_components/custom_components_tutorial.html
// root qml document 
// November 12th added camera code from JAM08 Introduction to the BlackBerry NDK
// Recording of session is located here 
// http://hosting.desire2learncapture.com/RIM/1/watch/30.aspx


import bb.cascades 1.0

// creates one page with a label
Page {
    id: iChing
    titleBar: TitleBar {
        title: "iChing by mobiFoundry.com "
        visibility: ChromeVisibility.Visible
        kind: TitleBarKind.Default
    }
    Container {
        id: greetingPhrase
        background: Color.create("#EE0000")
        leftPadding: 50
        rightPadding: 50
        topPadding: 250

        // The custom component
        Label {
            id: uppertrigramlabel 
            text: "Upper Trigram"
            textStyle.color: Color.Blue
            textStyle.fontWeight: FontWeight.W900
            textStyle.fontSizeValue: 8.0
        }
        TrigramView {
            id: uppertrigram
            leftPadding: 0
            rightPadding: 0
            topPadding: 0
            bottomPadding: 0
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            visible: true
        }
        Label {
             id: lowertrigramlabel            
            text: "Lower Trigram"
            textStyle.fontSizeValue: 8.0
            textStyle.color: Color.Blue
            textStyle.fontWeight: FontWeight.W900
            visible: false
        }
        TrigramView {
            id: lowertrigram
            leftPadding: 0
            rightPadding: 0
            topPadding: 0
            bottomPadding: 0 
                horizontalAlignment: HorizontalAlignment.Center
                 verticalAlignment: VerticalAlignment.Center
            visible: false
        }
        Container {
            leftPadding: 50
            rightPadding: 50
 
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            // The button used to generate a new trigram
            Button {
                text: " Generate iChing Trigrams "
                onClicked: {
                    //                greetingPhrase.text = "                        ";
                    createTrigram(); // Invoke createTrigram() when the button is clicked
                }
            } // end button
        }
        Label {
            id: hexigram
            text: "IChing"
            visible: true
        }

        // end Container of button
    }

    // Generates a new Trigram
    function createTrigram() {
   
        // Choose a random of 8 Trigrams, get random between 1 and 8.
        var ut = Math.ceil(Math.random() * 8)
        switch (ut) {
            case 1:
                // Set trigram image and message to Bound - Ken.
                uppertrigramlabel.text = "                Bound - Ken!"
                uppertrigram.image = "asset:///images/bound_ken.png"
                break
            case 2:
                // Set trigram image and message to Field - K'un.
                uppertrigramlabel.text = "                 Field - K'un!"
                uppertrigram.image = "asset:///images/field_kun.png"
                break
            case 3:
                // Set image and message to Force - Ch'ien.
                uppertrigramlabel.text = "                 Force - Ch'ien!"
                uppertrigram.image = "asset:///images/force_chien.png"
                break
            case 4:
                //Set image and message to Gorge - K'an.
                uppertrigramlabel.text = "                Gorge - K'an!"
                uppertrigram.image = "asset:///images/gorge_kan.png"
                break
            case 5:
                //Set image and message to Ground - Sun.
                uppertrigramlabel.text = "                Ground - Sun!"
                uppertrigram.image = "asset:///images/ground_sun.png"
                break
            case 6:
                //Set image and message to Open - Tui.
                uppertrigramlabel.text = "                Open - Tui!"
                uppertrigram.image = "asset:///images/open_tui.png"
                break
            case 7:
                //Set image and message to Gorge - K'an.
                uppertrigramlabel.text = "                Radiance - Li!"
                uppertrigram.image = "asset:///images/radience_li.png"
                break
            case 8:
                //Set image and message to Shake - Chen.
                uppertrigramlabel.text = "               Shake - Chen!"
                uppertrigram.image = "asset:///images/shake_chien.png"
                break
            default:
                // Use the fallback image
                uppertrigram.text = greetingPhrase.text
                uppertrigram.image = "asset:///images/ichingcir.png"
        } // Ends the switch statement
        var lt = Math.ceil(Math.random() * 8)
        switch (lt) {
            case 1:
                // Set trigram image and message to Bound - Ken.
                lowertrigramlabel.text = "                Bound - Ken!"
                //  ************
                //  *****  *****
                //  *****  *****
                lowertrigram.image = "asset:///images/bound_ken.png"
                switch (ut) {
                    case 1:
                        // 52
                 //  ************
                 //  *****  *****
                 //  *****  *****                        
                 //  ************
                 //  *****  *****
                 //  *****  *****      
// Hexagram Number 52
// Keyword(s): Keeping Still
// Symbolic of: stillness
// THE KĂN HEXAGRAM
 
// The General Meaning
// When one's resting is like that of the back, and he loses all consciousness of self; when he walks in his courtyard, and does not see any (of the persons) in it, there will be no error.
 
 
// Explanation of the separate lines
// 1. The first SIX, divided, shows its subject keeping his toes at rest. There will be no error; but it will be advantageous for him to be persistently firm and correct.
// 2. The second SIX, divided, shows its subject keeping the calves of his legs at rest. He cannot help (the subject of the line above) whom he follows, and is dissatisfied in his mind.
// 3. The third NINE, undivided, shows its subject keeping his loins at rest, and separating the ribs (from the body below). The situation is perilous, and the heart glows with suppressed excitement.
// 4. The fourth SIX, divided, shows its subject keeping his trunk at rest. There will be no error.
// S. The fifth SIX, divided, shows its subject keeping his jawbones at rest, so that his words are (all) orderly. Occasion for repentance will disappear.
// 6. The sixth NINE, undivided, shows its subject devotedly maintaining his restfulness. There will be good fortune.
                                   
                    hexigram.text = "Bound/Stabilising, Ken (KĂN)"
                    
                    break;
                    case 2:
                  //Field - K'un!
                  //  *****  *****
                  //  *****  *****               
                  //  *****  *****   
                  //  Bound - Ken!        
                  //  ************
                  //  *****  *****
                  //  *****  *****               
                     hexigram.text = "Humbling, Ch'ien (KHIEN)"
 //Hexagram Number 15
 //Keyword(s): Modesty
 //Symbolic of: biting one's tongue
 //THE KHIEN HEXAGRAM
 
 
 
 //The General Meaning
// Khien indicates progress and success. The superior man, (being humble as it implies), will have a (good) issue (to his undertakings).
 
 
// Explanation of the separate lines
// 1. The first SIX, divided, shows us the superior man who adds humility to humility. (Even) the great stream may be crossed with this, and there will be good fortune.
// 2. The second SIX, divided, shows us humility that has made itself recognised. With firm correctness there will be good fortune.
// 3. The third NINE, undivided, shows the superior man of (acknowledged) merit. He will maintain his success to the end, and have good fortune.
// 4. The fourth SIX, divided, shows one, whose action would be in every way advantageous, stirring up (the more) his humility.
// 5. The fifth SIX, divided, shows one who, without being rich, is able to employ his neighbours. He may advantageously use the force of arms. All his movements will be advantageous.
// 6. The sixth SIX, divided, shows us humility that has made itself recognised. The subject of it will with advantage put his hosts in motion; but (he will only) punish his own towns and state.
                      
                     break;
                   case 3:
                       //Force - Ch'ien!
                   //  ************
                   //  ************               
                   //  ************   
                   //  Bound - Ken!        
                   //  ************
                   //  *****  *****
                   //  *****  *****                               
                    hexigram.text = "Retiring, Tun (THUN)"
 //Hexagram Number 33
 //Keyword(s): Retreat
 //Symbolic of: running away
 //THE THUN HEXAGRAM
 
 
 
 //The General Meaning
 //Thun indicates successful progress (in its circumstances). To a small extent it will (still) be advantageous to be firm and correct.
 
 
 //Explanation of the separate lines
 //1. The first SIX, divided, shows a retiring tail. The position is perilous. No movement in any direction should be made.
 //2. The second SIX, divided, shows its subject holding (his purpose) fast as if by a (thong made from the) hide of a yellow ox, which cannot be broken.
 //3. The third NINE, undivided, shows one retiring but bound,--to his distress and peril. (If he were to deal with his binders as in) nourishing a servant or concubine, it would be fortunate for him.
 //4. The fourth NINE, undivided, shows its subject retiring notwithstanding his likings. In a superior man this will lead to good fortune; a small man cannot attain to this.
 //5. The fifth NINE, undivided, shows its subject retiring in an admirable way. With firm correctness there will be good fortune.
 //6. The sixth NINE, undivided, shows its subject retiring in a noble way. It will be advantageous in every respect.                   
                    break;  
                    case 4:
                //  Gorge - K'an!    
                  //  *****  *****
                  //  *****  *****               
                  //  ************   
                  //  Bound - Ken!        
                  //  ************
                  //  *****  *****
                  //  *****  *****                                  
                     hexigram.text = "Small Exceeding: Small, Hsiao (HSIÂO KWO)"
  //Hexagram Number 62
  //Keyword(s): The Small Persist
 // Symbolic of: a tiny weakness or mistake
 // THE HSIÂO KWO HEXAGRAM
  
  
  
 // The General Meaning
 // Hsiâo Kwo indicates that (in the circumstances which it implies) there will be progress and attainment.  But it will be advantageous to be firm and correct. (What the name denotes) may be done in small affairs, but not in great affairs. (It is like) the notes that come down from a bird on the wing; to descend is better than to ascend. There will (in this way) be great good fortune.
  
  
 // Explanation of the separate lines
 // 1. The first SIX, divided, suggests (the idea of) a bird flying, (and ascending) till the issue is evil.
//  2. The second SIX, divided, shows its subject passing by his grandfather, and meeting with his grandmother; not attempting anything against his ruler, but meeting him as his minister. There will be no error.
//  3. The third NINE, undivided, shows its subject taking no extraordinary precautions against danger; and some in consequence finding opportunity to assail and injure him. There will be evil.
//  4. The fourth NINE, undivided, shows its subject falling into no error, but meeting (the exigency of his situation), without exceeding (in his natural. course). If he go forward, there will be peril, and he must be cautious. There is no occasion to be using firmness perpetually.
//  5. The fifth SIX, divided, (suggests the idea) of dense clouds, but no rain, coming from our borders in the west. It also (shows) the prince shooting his arrow, and taking the bird in a cave.
// 6. The sixth SIX, divided, shows. its subject not meeting (the exigency of his situation), and exceeding (his proper course). (It suggests the idea of) a bird flying far aloft. There will be evil. The case is what is called one of calamity and self-produced injury.                   
                     break;                   
                     case 5:
                    //  Ground - Sun!   
                    //  ************
                    //  ************               
                    //  *****  *****   
                    //  Bound - Ken!        
                    //  ************
                    //  *****  *****
                    //  *****  *****                                 
                      hexigram.text = "Infiltrating/Gradual Advance, Chien (KIEN)"
//Hexagram Number 53
//Keyword(s): Development
//Symbolic of: gradual development
//THE KIEN HEXAGRAM



//The General Meaning
//Kien suggests to us the marriage of a young lady, and the good fortune (attending it). There will be advantage in being firm and correct.


//Explanation of the separate lines
//1. The first SIX, divided, shows the wild geese gradually approaching the shore. A young officer (in similar circumstances) will be in a position of danger, and be spoken against; but there will be no error.
//2. The second SIX, divided, shows the geese gradually approaching the large rocks, where they eat and drink joyfully and at ease. There will be good fortune.
//3. The third NINE, undivided, shows them gradually advanced to the dry plains. (It suggests also the idea of) a husband who goes on an expedition from which he does not return, and of a wife who is pregnant, but will not nourish her child. There will be evil. (The case symbolised) might be advantageous in resisting plunderers.
//4. The fourth SIX, divided, shows the geese gradually advanced to the trees. They may light on the flat branches. There will be no error.
//5. The fifth NINE, undivided, shows the geese gradually advanced to the high mound. (It suggests the idea of) a wife who for three years does not become pregnant; but in the end the natural issue cannot be prevented. There will be good fortune.
//6. The sixth NINE, undivided, shows the geese gradually advanced to the large heights (beyond). Their feathers can be used as ornaments. There will be good fortune.
                       
                      break;  
 
                    case 6:
                     hexigram.text = ""
                     break;
                    case 7:
                    hexigram.text = ""
                    break;  
                     case 8:
                      hexigram.text = ""
                      break;                                                               
                    default:
                    } // end switch statement 
                break
            case 2:
                // Set trigram image and message to Field - K'un.
                lowertrigramlabel.text = "                 Field - K'un!"
                lowertrigram.image = "asset:///images/field_kun.png"
                break
            case 3:
                // Set image and message to Force - Ch'ien.
                lowertrigramlabel.text = "                 Force - Ch'ien!"
                lowertrigram.image = "asset:///images/force_chien.png"
                break
            case 4:
                //Set image and message to Gorge - K'an.
                lowertrigramlabel.text = "                Gorge - K'an!"
                lowertrigram.image = "asset:///images/gorge_kan.png"
                break
            case 5:
                //Set image and message to Ground - Sun.
                lowertrigramlabel.text = "                Ground - Sun!"
                lowertrigram.image = "asset:///images/ground_sun.png"
                break
            case 6:
                //Set image and message to Open - Tui.
                lowertrigramlabel.text = "                Open - Tui!"
                lowertrigram.image = "asset:///images/open_tui.png"
                break
            case 7:
                //Set image and message to Gorge - K'an.
                lowertrigramlabel.text = "                Radiance - Li!"
                lowertrigram.image = "asset:///images/radience_li.png"
                break
            case 8:
                //Set image and message to Shake - Chen.
                lowertrigramlabel.text = "               Shake - Chen!"
                lowertrigram.image = "asset:///images/shake_chien.png"
                break
            default:
                // Use the fallback image
                lowertrigram.text = greetingPhrase.text
                lowertrigram.image = "asset:///images/ichingcir.png"
        } // Ends the switch statement
        lowertrigram.visible = true 
        // Rotate the whole component to a random number between
        // -10 and 10 degrees.
        uppertrigram.rotationZ = (Math.random() * 20) - 10
        lowertrigram.rotationZ = (Math.random() * 20) - 10
        // Scale the whole component to a random number between
        // 0.7 and 1.2
        var s = Math.random() * 0.5 + 0.7
        uppertrigram.scaleX = s
        uppertrigram.scaleY = s
        var s = Math.random() * 0.5 + 0.7
        lowertrigram.scaleX = s
        lowertrigram.scaleY = s
    }    // Ends the createTrigram() function
}// end of page
