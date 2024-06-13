import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    home: singlechildScrollview(),
  ));
}
class singlechildScrollview extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Story",style: GoogleFonts.asap()),),
      body: Column(
        children: [
          Text("The King's Painting",style: GoogleFonts.arya(fontWeight: FontWeight.bold,fontSize: 30),),
          Expanded(child: SingleChildScrollView(
            child: Text("""1. “Lamb to the Slaughter” by Roald Dahl
                While not exactly a philosophical or political tale like our first two examples, this twisty short story from Dahl does delve into some shady moral territory. We are introduced to Mary Maloney: a loving wife and dedicated homemaker. In just a few short paragraphs describing how she welcomes her husband home, Dahl makes us sympathize with Mary — before a rash act turns her life upside down and takes the reader with her on a dark journey.

                For those who haven’t read it, we won’t spoil the rest. However, it’s safe to say that Dahl serves up a fiendish twist on a platter.

                2. “The Lottery” by Shirley Jackson
                A perennial feature in many a high school syllabus, Shirley Jackson’s best-known short story clinically details an unusual ritual that takes place in a small town. There’s not exactly a lot of plot to spoil in The Lottery — but within a few short pages, Jackson manages to represent the mob mentality that can drive reasonable people to commit heinous acts.

                3. “How to Become a Writer” by Lorrie Moore
                Told in the second person point of view, this story from Moore’s debut anthology Self-Help takes an honest look at the inner life of a struggling artist. Through the use of an unusual POV, the author manages to turn her reader into a confidante — making it abundantly clear that the ‘you’ the narrator is speaking about is actually herself.

                This story is a standout, but the entire collection is well worth a read for its insight, humor, and disregard for literary norms.

                4. “Cat Person” by Kristen Roupenian
                In the Social Media Age, no short story has gone viral the way this New Yorker contribution from Roupenian has. Arriving at the height of #MeToo, it begins with 20-year-old Margot embarking on the early stages of flirtation with an older man, Robert. As she gets to know more about this man (as well as filling in the gaps with her imagination), the power dynamic in their relationship starts to fluctuate.

          Lauded for its portrayal of Margot’s inner life and the fears many modern women face when it comes to dating, it also has its fair share of detractors — many are critical of the central character, some are downright outraged by the story’s success. Still, this story undeniably struck a chord with the reading public, and will likely remain relevant for some time.

          5. “Cathedral” by Raymond Carver
          First published in The Atlantic Monthly in 1981, “Cathedral” is today known as one of Raymond Carver’s finest works. When it opens, we meet a narrator whose wife is expecting a visit from an old friend, a blind man. Dissatisfied and distrusting of people not like him, our narrator struggles to connect until the blind man asks him to describe a cathedral to him.

          “Cathedral” is one of Carver’s own personal favorites, and deservedly so. His characteristic minimalist style is devastating as the story builds up to a shattering moment of emotional truth — an ultimate reminder that no-one else can capture the quiet sadness of working-class people like him.

          6. “A Good Man Is Hard to Find” by Flannery O’Connor
          Innocuously titled, “A Good Man Is Hard to Find” is nevertheless Flannery O’Connor’s bleakest — and most famous — work. It begins unassumingly with a Southern family who’s planning to go on a road trip. Yet the journey is rudely interrupted when their car overturns on an abandoned dirt road — and they are met by an enigmatic group of three men, coming up over the far hill.

          This short story inspired some strong reactions from the public upon publication — and the conversation continues today as to its frank depiction of the nature of good and evil. Again, we won’t spoil anything for you, except to say that “A Good Man Is Hard to Find” is well worth your time.

          7. “Symbols and Signs” by Vladimir Nabokov
          The famous author of Lolita wrote “Signs and Symbols” in 1948. Its premise is seemingly simple: an elderly couple visits their mentally ill son in the sanatorium in America. Yet their background and trials come into sharp focus as the story develops, until an explosive ending disrupts everyone’s peace of mind.

          As you might expect, the somber “Symbols and Signs” diverges sharply from Lolita in terms of both tone and subject — but its ending will keep you awake at night thinking about its implications.

          8. “Sticks” by George Saunders
          Not so much a short story as it is flash fiction, “Sticks” is written from the perspective of a young man whose father has an unusual habit: dressing up a crucifix that’s built of out a metal pole in the yard. One of America’s greatest living short story writers, George Saunders explained: "For two years I'd been driving past a house like the one in the story, imagining the owner as a man more joyful and self-possessed and less self-conscious than myself. Then one day I got sick of him and invented his opposite, and there was the story."

          The result is a masterful piece of fiction that builds something out of seemingly nothing — all in the space of only two paragraphs.

          9. “The Veldt” by Ray Bradbury""",style: GoogleFonts.hachiMaruPop(fontSize: 19),),
          )),
        ],
      ),
    );
  }
}
