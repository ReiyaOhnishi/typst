// Test hyphenation.

---
// Test hyphenating english and greek.
#set text(hyphenate: true)
#set page(width: auto)
#grid(
  columns: (70pt, 60pt),
  text(lang: "en")[Warm welcomes to Typst.],
  text(lang: "el")[διαμερίσματα. \ λατρευτός],
)

---
// Test disabling hyphenation for short passages.
#set text(lang: "en", hyphenate: true)

Welcome to wonderful experiences. \
Welcome to `wonderful` experiences. \
Welcome to #text(hyphenate: false)[wonderful] experiences. \
Welcome to wonde#text(hyphenate: false)[rf]ul experiences. \

// Test enabling hyphenation for short passages.
#set text(lang: "en", hyphenate: false)
Welcome to wonderful experiences. \
Welcome to wo#text(hyphenate: true)[nd]erful experiences. \

---
// Hyphenate between shape runs.
#set page(width: 80pt)
#set text(lang: "en", hyphenate: true)
It's a #emph[Tree]beard.

---
// This sequence would confuse hypher if we passed trailing / leading
// punctuation instead of just the words. So this tests that we don't
// do that. The test passes if there's just one hyphenation between
// "net" and "works".
#set page(width: 70pt)
#set text(lang: "en", hyphenate: true)
#h(6pt) networks, the rest.