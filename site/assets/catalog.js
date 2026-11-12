const searchInput = document.querySelector('[data-model-search]');
const brandSelect = document.querySelector('[data-brand-filter]');
const summary = document.querySelector('[data-catalog-summary]');
const results = document.querySelector('[data-model-results]');

let catalogues = [];

function render() {
  const query = (searchInput?.value || '').trim().toLowerCase();
  const brand = brandSelect?.value || '';
  const matches = [];

  for (const catalogue of catalogues) {
    if (brand && catalogue.brand !== brand) continue;
    for (const model of catalogue.models) {
      if (!query || model.toLowerCase().includes(query)) matches.push({ brand: catalogue.brand, model });
    }
  }

  const shown = matches.slice(0, 250);
  results.innerHTML = shown.map(item => `<tr><td>${escapeHtml(item.brand)}</td><td>${escapeHtml(item.model)}</td></tr>`).join('');
  summary.textContent = `${matches.length.toLocaleString()} matching catalogue entr${matches.length === 1 ? 'y' : 'ies'}${matches.length > 250 ? ' — showing the first 250' : ''}.`;
}

function escapeHtml(value) {
  return value.replace(/[&<>'"]/g, character => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', "'": '&#39;', '"': '&quot;' })[character]);
}

fetch('../data/catalog.json')
  .then(response => {
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    return response.json();
  })
  .then(data => {
    catalogues = data.catalogues;
    for (const catalogue of catalogues) {
      const option = document.createElement('option');
      option.value = catalogue.brand;
      option.textContent = `${catalogue.brand} (${catalogue.count})`;
      brandSelect.appendChild(option);
    }
    document.querySelector('[data-catalog-total]').textContent = data.totalModels.toLocaleString();
    render();
  })
  .catch(error => {
    summary.textContent = `The catalogue could not be loaded: ${error.message}`;
  });

searchInput?.addEventListener('input', render);
brandSelect?.addEventListener('change', render);
