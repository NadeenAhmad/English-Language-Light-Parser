% Augment our definite clause grammar for English light with nouns
nouns(noun(woman)) --> [woman]. 
nouns(noun(man)) --> [man].
nouns(noun(boy)) --> [boy].
nouns(noun(girl)) --> [girl].   
nouns(noun(room)) --> [room]. 
nouns(noun(box)) --> [box].
nouns(noun(school)) --> [school].
nouns(noun(building)) --> [building].   
nouns(noun(tree)) --> [tree]. 
nouns(noun(shed)) --> [shed]. 
nouns(noun(envelope)) --> [envelope]. 
nouns(noun(student)) --> [student].
nouns(noun(scientists)) --> [scientists].  
nouns(noun(lecturer)) --> [lecturer]. 
nouns(noun(lecturers)) --> [lecturers].
nouns(noun(students)) --> [students].
nouns(noun(researcher)) --> [researchers].
nouns(noun(researchers)) --> [researchers].
nouns(noun(cat)) --> [cat].
nouns(noun(dog)) --> [dog].
nouns(noun(professors)) --> [professors].
nouns(noun(professor)) --> [professor].
% Augment our definite clause grammar for English light with verbs
verbs(verb(played)) --> [played].
verbs(verb(worked)) --> [worked].
verbs(verb(pushed)) --> [pushed].
verbs(verb(stored)) --> [stored].
verbs(verb(gave)) --> [gave].
verbs(verb(climbed)) --> [climbed].
verbs(verb(watched)) --> [watched].
verbs(verb(admired)) --> [admired].
verbs(verb(appreciated)) --> [appreciated].
verbs(verb(listened)) --> [listened].
verbs(verb(liked)) --> [liked].
verbs(verb(played))-->[played].
verbs(verb(drove))-->[drove].
verbs(verb(loved))-->[loved].
verbs(verb(ate))-->[ate].
verbs(verb(hated))-->[hated].
verbs(verb(did))-->[did].
verbs(verb(went))-->[went].
verbs(verb(slept))-->[slept].
verbs(verb(told))-->[told].
verbs(verb(lived))-->[lived].
% Augment our definite clause grammar for English light with adverbs
adverbs(adv(quickly))-->[quickly].
adverbs(adv(secretly))-->[secretly].
adverbs(adv(easily))-->[easily].
adverbs(adv(slowly))-->[slowly].
adverbs(adv(carefully))-->[carefully].
adverbs(adv(usually))-->[usually].
adverbs(adv(generally))-->[generally].
adverbs(adv(very))-->[very].
adverbs(adv(just))-->[just].
adverbs(adv(barely))-->[barely].
% Augment our definite clause grammar for English light with prepositions
perpositions(prep(in)) --> [in].
perpositions(prep(on)) --> [on].
perpositions(prep(at)) --> [at].
perpositions(prep(for)) --> [for].
perpositions(prep(from)) --> [from].
perpositions(prep(after)) --> [after].
perpositions(prep(before)) --> [before].
perpositions(prep(of)) --> [of].
perpositions(prep(with)) --> [with].
perpositions(prep(behind)) --> [behind].
perpositions(prep(below)) --> [below].
% Augment our definite clause grammar for English light with determiners

determiners(det(a))-->[a].
determiners(det(an))-->[an].
determiners(det(the))-->[the].
determiners(det(many))-->[many].
determiners(det(some))-->[some].
determiners(det(every))-->[every].
% Augment our definite clause grammar for English light with relative pronouns
pronouns(pronoun(who)) --> [who].
pronouns(pronoun(you)) --> [you].
pronouns(pronoun(me)) --> [me].
pronouns(pronoun(our)) --> [our].
pronouns(pronoun(whom)) --> [whom].
pronouns(pronoun(they)) --> [they].
pronouns(pronoun(we)) --> [we].
pronouns(pronoun(that)) --> [that].
pronouns(pronoun(he)) --> [he].
pronouns(pronoun(she)) --> [she].
pronouns(pronoun(it)) --> [it].
% Augment our definite clause grammar for English light with conj
conjunctionss(conjun(while)) --> [while].
conjunctions(conj(and)) --> [and].
% Augment our definite clause grammar for English light with adjectives
adjectives(adj(old))-->[old].
adjectives(adj(big))-->[big].
adjectives(adj(new))-->[new].
adjectives(adj(large))-->[large].
adjectives(adj(empty))-->[empty].
adjectives(adj(poor))-->[poor].
adjectives(adj(young))-->[young].
adjectives(adj(white))-->[white].
adjectives(adj(brilliant))-->[brilliant].
adjectives(adj(talented))-->[talented].
adjectives(adj(bright))-->[bright].
adjectives(adj(red))-->[red].
adjectives(adj(black))-->[black].
adjectives(adj(small))-->[small].
adjectives(adj(full))-->[full].
adjectives(adj(attractive))-->[attractive].
adjectives(adj(clean))-->[clean].
adjectives(adj(kind))-->[kind].
adjectives(adj(brave))-->[brave].
adjectives(adj(calm))-->[calm].
% Building blocks of a sentence are noun phrases and verb phrases
% noun phrase can be made of a determiner and then a noun ex: "the cat"
% adjective describing the noun ex: "white box"



verbPhrase(verbP(B)) --> verbs(B).
verbPhrase(verbP(B,NP)) --> verbs(B), nounPhrase(NP).
verbPhrase(verbP(B,PP)) --> verbs(B), prepPhrase(PP).
verbPhrase(verbP(A,V)) --> adverbs(A), verbPhrase(V).
verbPhrase(verbP(B,C,V)) --> verbs(B), conjunctions(C), verbPhrase(V).
verbPhrase(verbP(B,NP,C,V)) --> verbs(B), nounPhrase(NP), conjunctions(C), verbPhrase(V).
verbPhrase(verbP(B,PP,C,V)) --> verbs(B), prepPhrase(PP), conjunctions(C), verbPhrase(V).
verbPhrase(verbP(B,NP1,NP2)) --> verbs(B), nounPhrase(NP1), nounPhrase(NP2).

nounPhrase(nounP(N)) --> nouns(N).
nounPhrase(nounP(P)) --> pronouns(P).
nounPhrase(nounP(A,N)) --> adjectivePhrase(A), nouns(N).
nounPhrase(nounP(D,N)) --> determiners(D), nouns(N).
nounPhrase(nounP(X,C,NP)) --> nouns(X), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(P,C,NP)) --> pronouns(P), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(D,A,N)) --> determiners(D), adjectivePhrase(A), nouns(N).
nounPhrase(nounP(D,N,P)) --> determiners(D), nouns(N), prepPhrase(P).
nounPhrase(nounP(Y,X,C,NP)) --> determiners(Y), nouns(X), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(A,N,C,NP)) --> adjectivePhrase(A), nouns(N), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(D,A,N,R)) --> determiners(D), adjectivePhrase(A), nouns(N), pronounPhrase(R).
nounPhrase(nounP(D,A,N,P)) --> determiners(D), adjectivePhrase(A), nouns(N), prepPhrase(P). 
nounPhrase(nounP(D,A,N,C,NP)) --> determiners(D), adjectivePhrase(A), nouns(N), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(D,N,R,C,NP)) --> determiners(D), nouns(N), pronounPhrase(R), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(D,A,N,R,C,NP)) --> determiners(D), adjectivePhrase(A), nouns(N), pronounPhrase(R), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(D,N,P,C,NP)) --> determiners(D), nouns(N), prepPhrase(P), conjunctions(C), nounPhrase(NP).
nounPhrase(nounP(D,A,N,P,C,NP)) --> determiners(D), adjectivePhrase(A), nouns(N), prepPhrase(P), conjunctions(C), nounPhrase(NP).

adjectivePhrase(adj(A)) --> adjectives(adj(A)).
adjectivePhrase(adj(A,R)) --> adjectives(A), adjectivePhrase(R).


prepPhrase(prepP(P,N)) --> perpositions(P), nounPhrase(N).
prepPhrase(prepP(P)) --> perpositions(P).

pronounPhrase(pronounP(R)) --> pronouns(R).
pronounPhrase(pronounP(R,V)) --> pronouns(R), verbPhrase(V).
pronounPhrase(pronounP(R,N,V)) --> pronouns(R), nounPhrase(N), verbPhrase(V).
pronounPhrase(pronounP(R,N)) --> pronouns(R), nounPhrase(N).


s(ss(NP,V)) --> nounPhrase(NP), verbPhrase(V).
s(ss(NP,V,C,S)) --> nounPhrase(NP), verbPhrase(V),conjunctions(C),s(S).
s(ss(NP,V,C,S)) --> nounPhrase(NP), verbPhrase(V),conjunctionss(C),s(S).


















