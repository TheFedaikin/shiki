rm -rf tmp
mkdir -p tmp/grammars
node scripts/pullGrammarsFromGitHub.js
node scripts/normalizeGrammarPaths.js
rm packages/languages/data/*
cp tmp/grammars/*.json packages/languages/data
node scripts/updateLangSrc.js