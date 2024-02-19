import { Given, When, Then } from "@wdio/cucumber-framework";
import { browser, $ } from "@wdio/globals";

When('I enter a {string} username', async function(username) {
    await $("#username").setValue(username);
});

When('I enter a {string} password', async function(password) {
    await $("#password").setValue(password);
});

When('I press on Login button', async function() {
    const button = await $("button[type=submit]");
    button.click();
});

Then('I {word} see the Logout button', async function(visibility) {
    if (visibility === "do") {
        await expect($("i*=Logout")).toBeDisplayed();
    } else if (visibility === "don't") {
        await expect($("i*=Logout")).not.toBeDisplayed();
    } else {
        throw Error(`Visibility ${visibility} not supported`);
    }
});