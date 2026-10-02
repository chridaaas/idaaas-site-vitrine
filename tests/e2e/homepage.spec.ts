import { expect, test } from '@playwright/test'

test('homepage presents the product and primary navigation', async ({ page }) => {
  await page.goto('/')

  await expect(page).toHaveTitle('IDAaaS — Accueil')
  await expect(page.getByRole('heading', { level: 1 })).toContainText('L\'IA qui suit')
  await expect(page.getByRole('link', { name: 'Notre approche' }).first()).toHaveAttribute('href', '#approche')
})