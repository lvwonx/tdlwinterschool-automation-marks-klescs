import { Given, When, Then } from "@wdio/cucumber-framework";
import { browser, $ } from "@wdio/globals";

When("I press the Start button", async function() {
    await $("#start button").click();
});