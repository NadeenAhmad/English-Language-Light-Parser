# English Language Light Parser
* Prolog was used in this project to implement a definite clause grammar of English-Light
* English-Light is a fragment of English (i.e., English-Light does not include any ungrammatical
English sentences) which accounts to structures as those appearing in the following examples.  
a) The young boy who worked for the old man pushed and stored a big box in the large
empty room after school.  
b) The old woman and the old man gave the poor young man whom they liked a white
envelope in the shed behind the building.  
c) Every boy quickly climbed some big tree while every girl secretly watched some boy.  
d) Some brilliant students and many professors watched and admired talented lecturers
and appreciated bright scientists and researchers.  
* The lexicon implemented includes all the words appearing in the examples above, plus twenty
nouns, twenty verbs (with the past tense inflection), twenty adjectives, adverbs, ten prepositions, and ten determiners.
* The grammar has s as its start variable.  
* A parse tree is represented  as follows:  
a) l, where l is the label of a leaf.    
b) p(l1, l2, . . . , ln), where p is a label of a parent node and li is the ith sub-tree thereof,where left-to-right order is assumed.  
