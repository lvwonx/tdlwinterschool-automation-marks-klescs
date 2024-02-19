import { Given, When, Then } from "@wdio/cucumber-framework";
import { browser, $ } from "@wdio/globals";

Then('I see a message {string}', async function(message) {
    const flashMessage = await $("#flash");
    await expect(flashMessage).toHaveText(expect.stringContaining(message));
});

Then('I see a {string} message', async function(text) {
    const message = await $(`//h4[text()="${text}"]`);
    await expect(message).toBeDisplayed();
});