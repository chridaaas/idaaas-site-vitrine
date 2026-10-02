<script setup lang="ts">
const principles = [
  { number: '01', title: 'Autonome', text: 'Des modèles qui avancent sans attendre.' },
  { number: '02', title: 'Souveraine', text: 'Vos données restent sous votre contrôle.' },
  { number: '03', title: 'Frugale', text: 'La justesse, sans le poids inutile.' },
]
</script>

<template>
  <div class="site-shell">
    <header class="site-header">
      <a class="wordmark" href="#accueil" aria-label="IDAaaS, accueil">IDA<span>aaS</span><i>.</i></a>
      <nav aria-label="Navigation principale">
        <a href="#approche">Notre approche</a>
        <a href="#contact">Contact</a>
      </nav>
      <a class="header-link" href="#contact">Parlons de vos données <span aria-hidden="true">↗</span></a>
    </header>

    <main>
      <section id="accueil" class="hero">
        <div class="hero-copy">
          <p class="eyebrow"><span></span> L'intelligence prédictive en flux</p>
          <h1>L'IA qui suit<br>le <em>rythme</em> du réel.</h1>
          <p class="intro">Des prédictions utiles, au moment où elles comptent. IDAaaS transforme vos flux de données en décisions claires, sans compromis sur votre souveraineté.</p>
          <div class="hero-actions">
            <a class="button-primary" href="#contact">Découvrir IDAaaS <span aria-hidden="true">↗</span></a>
            <a class="text-link" href="#approche">Notre approche <span aria-hidden="true">↓</span></a>
          </div>
          <p class="hero-note"><span class="status-dot"></span> Toujours à jour. Jamais hors de contrôle.</p>
        </div>

        <div class="flow-visual" aria-label="Schéma du flux de données vers une prédiction exploitable">
          <div class="visual-topline"><span>FLUX EN DIRECT</span><span class="live"><i></i> ACTIF</span></div>
          <div class="flow-stage source-stage">
            <span class="stage-index">01 / ENTRÉE</span>
            <strong>Vos données</strong>
            <div class="source-bars" aria-hidden="true"><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i></div>
            <span class="stage-caption">continues · maîtrisées</span>
          </div>
          <div class="flow-connector" aria-hidden="true"><i></i><i></i><i></i></div>
          <div class="flow-stage engine-stage">
            <span class="stage-index">02 / ANALYSE</span>
            <div class="engine-mark" aria-hidden="true"><b></b><b></b><b></b><b></b><b></b><b></b><b></b><b></b><b></b></div>
            <div><strong>IDAaaS</strong><span class="engine-caption">modèle en mouvement</span></div>
            <span class="engine-orbit" aria-hidden="true"></span>
          </div>
          <div class="flow-connector" aria-hidden="true"><i></i><i></i><i></i></div>
          <div class="flow-output">
            <div><span class="stage-index">03 / DÉCISION</span><strong>Le bon signal.</strong></div>
            <span class="output-arrow" aria-hidden="true">↗</span>
          </div>
          <div class="visual-footer"><span>LATENCE</span><strong>quasi nulle</strong><span class="footer-divider"></span><span>CONTRÔLE</span><strong>chez vous</strong></div>
        </div>

        <div class="hero-index" aria-hidden="true">01 — 03</div>
      </section>

      <section id="approche" class="approach">
        <div class="section-heading">
          <p class="eyebrow">L'IA, à votre rythme</p>
          <h2>Moins d'attente.<br><em>Plus de justesse.</em></h2>
        </div>
        <p class="approach-copy">Quand les données évoluent, vos décisions doivent pouvoir suivre. IDAaaS met l'intelligence au plus près du flux : utile, maîtrisée et toujours actuelle.</p>
        <div class="principles">
          <article v-for="principle in principles" :key="principle.number" class="principle">
            <span class="principle-number">{{ principle.number }}</span>
            <div><h3>{{ principle.title }}</h3><p>{{ principle.text }}</p></div>
            <span class="principle-arrow" aria-hidden="true">↗</span>
          </article>
        </div>
      </section>

      <footer id="contact" class="site-footer">
        <a class="wordmark footer-wordmark" href="#accueil">IDA<span>aaS</span><i>.</i></a>
        <p>Faites parler vos flux.</p>
        <a href="mailto:bonjour@idaaas.fr">bonjour@idaaas.fr <span aria-hidden="true">↗</span></a>
        <small>© {{ new Date().getFullYear() }} IDAaaS</small>
      </footer>
    </main>
  </div>
</template>

<style>
:root {
  font-family: 'DM Sans', sans-serif;
  color: #192824;
  background: #f4f5ef;
  font-synthesis: none;
  text-rendering: optimizeLegibility;
  -webkit-font-smoothing: antialiased;
  --ink: #192824;
  --green: #b9ef73;
  --paper: #f4f5ef;
  --muted: #69736d;
}

* { box-sizing: border-box; }
html { min-width: 320px; scroll-behavior: smooth; }
body { min-width: 320px; margin: 0; }
a { color: inherit; text-decoration: none; }
a:focus-visible { outline: 2px solid #167d5d; outline-offset: 5px; }

.site-shell { overflow: hidden; }
.site-header { height: 82px; display: flex; align-items: center; justify-content: space-between; padding: 0 7.2%; border-bottom: 1px solid #dfe3da; }
.wordmark { font-family: 'Archivo Black', sans-serif; font-size: 26px; letter-spacing: 0; }
.wordmark span { font-weight: 400; }
.wordmark i { color: #58a95d; font-style: normal; }
.site-header nav { display: flex; gap: 38px; margin-left: 60px; color: #58635c; font-size: 13px; }
.site-header nav a:hover, .text-link:hover { color: #167d5d; }
.header-link { font-size: 12px; font-weight: 700; }
.header-link span { margin-left: 8px; color: #21825f; }

.hero { position: relative; display: grid; grid-template-columns: 1fr .84fr; align-items: center; gap: 8%; min-height: 650px; padding: 86px 10.2% 100px; }
.hero-copy { max-width: 570px; animation: rise-in .7s ease-out both; }
.eyebrow { display: flex; align-items: center; gap: 10px; margin: 0 0 26px; color: #46735c; font-size: 10px; font-weight: 700; letter-spacing: 1.2px; text-transform: uppercase; }
.eyebrow span { width: 7px; height: 7px; border-radius: 50%; background: #54a96b; }
h1, h2, h3, p { margin-top: 0; }
h1 { margin-bottom: 24px; font-family: 'Archivo Black', sans-serif; font-size: clamp(46px, 5.2vw, 72px); font-weight: 400; line-height: 1.06; letter-spacing: 0; }
h1 em, h2 em { color: #35895f; font-style: normal; }
.intro { max-width: 430px; margin-bottom: 30px; color: #606c65; font-size: 15px; line-height: 1.8; }
.hero-actions { display: flex; align-items: center; gap: 28px; }
.button-primary { display: inline-flex; align-items: center; gap: 22px; min-height: 48px; padding: 0 20px; background: #193c30; color: white; font-size: 12px; font-weight: 700; transition: background .2s, transform .2s; }
.button-primary:hover { transform: translateY(-2px); background: #276249; }
.button-primary span { color: var(--green); font-size: 16px; }
.text-link { color: #525e57; font-size: 12px; font-weight: 700; }
.text-link span { margin-left: 7px; }
.hero-note { display: flex; align-items: center; gap: 9px; margin: 38px 0 0; color: #69736d; font-size: 11px; }
.status-dot { width: 6px; height: 6px; border-radius: 50%; background: #69a965; box-shadow: 0 0 0 4px #e0edda; }

.flow-visual { position: relative; min-height: 452px; padding: 20px 24px; overflow: hidden; background: #193c30; color: #f3f5eb; animation: rise-in .7s .12s ease-out both; }
.flow-visual::after { position: absolute; inset: 0; z-index: 0; background-image: linear-gradient(#ffffff0a 1px, transparent 1px), linear-gradient(90deg, #ffffff0a 1px, transparent 1px); background-size: 28px 28px; content: ''; pointer-events: none; }
.flow-visual > * { position: relative; z-index: 1; }
.visual-topline, .visual-footer { display: flex; align-items: center; justify-content: space-between; color: #a8b7aa; font-size: 8px; font-weight: 700; letter-spacing: 1px; }
.live { display: flex; align-items: center; gap: 6px; color: var(--green); }
.live i { width: 5px; height: 5px; border-radius: 50%; background: var(--green); }
.flow-stage { position: relative; display: flex; flex-direction: column; }
.source-stage { margin-top: 26px; padding: 15px 16px 12px; border: 1px solid #557063; background: #234838cc; }
.stage-index { color: #a5b9a6; font-size: 8px; font-weight: 700; letter-spacing: 1px; }
.source-stage strong { margin-top: 7px; font-size: 13px; }
.source-bars { display: flex; align-items: end; gap: 5px; height: 29px; margin-top: 11px; }
.source-bars i { flex: 1; height: 30%; background: #77bd72; opacity: .8; animation: signal 1.2s ease-in-out infinite alternate; }
.source-bars i:nth-child(3n) { height: 90%; animation-delay: .2s; }
.source-bars i:nth-child(3n + 1) { height: 55%; animation-delay: .4s; }
.source-bars i:nth-child(4n) { height: 72%; animation-delay: .6s; }
.stage-caption { margin-top: 6px; color: #b1c1b1; font-size: 9px; }
.flow-connector { display: flex; justify-content: center; gap: 6px; height: 21px; }
.flow-connector i { width: 1px; height: 100%; background: #78bd72; opacity: .65; }
.flow-connector i:nth-child(2) { opacity: 1; }
.engine-stage { flex-direction: row; align-items: center; gap: 14px; min-height: 86px; padding: 13px 16px; border: 1px solid #6f8f75; background: #2a5944; }
.engine-stage > .stage-index { position: absolute; top: 10px; right: 13px; }
.engine-mark { display: grid; grid-template-columns: repeat(3, 7px); gap: 4px; transform: rotate(45deg); }
.engine-mark b { width: 7px; height: 7px; background: var(--green); }
.engine-mark b:nth-child(2n) { opacity: .45; }
.engine-mark b:nth-child(5) { width: 9px; height: 9px; margin: -1px; background: white; }
.engine-stage strong { display: block; font-family: 'Archivo Black', sans-serif; font-size: 15px; font-weight: 400; }
.engine-caption { display: block; margin-top: 4px; color: #b9caba; font-size: 9px; }
.engine-orbit { position: absolute; right: 40px; width: 58px; height: 58px; border: 1px solid #9abe8c55; border-radius: 50%; }
.engine-orbit::before, .engine-orbit::after { position: absolute; inset: 8px; border: 1px solid #9abe8c44; border-radius: 50%; content: ''; }
.engine-orbit::after { inset: 17px; background: #b9ef7318; }
.flow-output { display: flex; align-items: center; justify-content: space-between; padding: 13px 15px; border-left: 2px solid var(--green); background: #d9edc8; color: #193c30; }
.flow-output strong { display: block; margin-top: 5px; font-size: 13px; }
.flow-output .stage-index { color: #60775f; }
.output-arrow { font-size: 22px; }
.visual-footer { justify-content: flex-start; gap: 9px; margin-top: 17px; font-size: 7px; }
.visual-footer strong { color: #e8eee1; font-size: 9px; letter-spacing: 0; }
.footer-divider { width: 1px; height: 12px; margin: 0 6px; background: #557063; }
.hero-index { position: absolute; right: 7.2%; bottom: 28px; color: #839087; font-size: 9px; letter-spacing: 1px; }

.approach { display: grid; grid-template-columns: .9fr 1fr; column-gap: 12%; padding: 84px 10.2% 92px; background: #e9eee5; }
.section-heading .eyebrow { margin-bottom: 17px; }
h2 { margin-bottom: 0; font-family: 'Archivo Black', sans-serif; font-size: 40px; font-weight: 400; line-height: 1.15; letter-spacing: 0; }
.approach-copy { align-self: end; max-width: 430px; margin-bottom: 3px; color: #606c65; font-size: 14px; line-height: 1.8; }
.principles { grid-column: 1 / -1; display: grid; grid-template-columns: repeat(3, 1fr); margin-top: 54px; border-top: 1px solid #cdd6ca; }
.principle { display: flex; align-items: flex-start; gap: 17px; min-height: 125px; padding: 24px 22px 16px 0; border-bottom: 1px solid #cdd6ca; }
.principle + .principle { padding-left: 22px; border-left: 1px solid #cdd6ca; }
.principle-number { color: #45805f; font-size: 9px; font-weight: 700; }
.principle h3 { margin-bottom: 7px; font-family: 'Archivo Black', sans-serif; font-size: 16px; font-weight: 400; }
.principle p { margin: 0; color: #69736d; font-size: 11px; line-height: 1.6; }
.principle-arrow { margin-left: auto; color: #488365; font-size: 14px; }

.site-footer { display: flex; align-items: center; gap: 28px; min-height: 100px; padding: 20px 7.2%; background: #193c30; color: #f4f5ef; }
.footer-wordmark { font-size: 20px; }
.site-footer p { margin: 0 auto 0 0; color: #b3c1b5; font-size: 11px; }
.site-footer > a:not(.wordmark) { font-size: 11px; }
.site-footer > a span { margin-left: 6px; color: var(--green); }
.site-footer small { margin-left: 24px; color: #a4b4a5; font-size: 9px; }

@keyframes rise-in { from { opacity: 0; transform: translateY(12px); } to { opacity: 1; transform: translateY(0); } }
@keyframes signal { to { transform: scaleY(.45); transform-origin: bottom; opacity: .55; } }
@media (prefers-reduced-motion: reduce) { *, *::before, *::after { scroll-behavior: auto !important; animation-duration: .01ms !important; animation-iteration-count: 1 !important; transition-duration: .01ms !important; } }

@media (max-width: 900px) {
  .site-header { padding-inline: 5%; }
  .hero { grid-template-columns: 1fr .88fr; gap: 5%; padding: 70px 7% 86px; }
  h1 { font-size: clamp(42px, 6vw, 58px); }
  .flow-visual { min-height: 430px; padding-inline: 18px; }
  .approach { padding-inline: 7%; column-gap: 7%; }
}
@media (max-width: 650px) {
  .site-header { height: 68px; }
  .site-header nav { display: none; }
  .header-link { font-size: 10px; }
  .hero { grid-template-columns: 1fr; gap: 42px; padding: 58px 7% 66px; }
  .hero-copy { max-width: none; }
  h1 { font-size: 48px; }
  .intro { max-width: 500px; font-size: 14px; }
  .flow-visual { width: 100%; min-height: 420px; }
  .hero-index { right: 7%; bottom: 24px; }
  .approach { grid-template-columns: 1fr; gap: 24px; padding: 65px 7% 70px; }
  h2 { font-size: 34px; }
  .principles { grid-template-columns: 1fr; margin-top: 35px; }
  .principle, .principle + .principle { min-height: 90px; padding: 20px 0; border-left: 0; }
  .site-footer { flex-wrap: wrap; gap: 13px 20px; padding: 24px 7%; }
  .site-footer p { flex: 1; }
  .site-footer small { width: 100%; margin: 0; }
}
</style>