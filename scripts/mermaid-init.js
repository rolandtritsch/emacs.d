window.addEventListener('load', function () {
  document.querySelectorAll('code.language-mermaid').forEach(function (el) {
    var div = document.createElement('div');
    div.className = 'mermaid';
    div.textContent = el.textContent;
    el.parentNode.replaceWith(div);
  });
  mermaid.initialize({ startOnLoad: true, securityLevel: 'loose' });
});
