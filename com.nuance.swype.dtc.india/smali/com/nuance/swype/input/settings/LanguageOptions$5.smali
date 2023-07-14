.class Lcom/nuance/swype/input/settings/LanguageOptions$5;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->createKeyboardDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

.field final synthetic val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

.field final synthetic val$language:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 273
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/preference/KeyboardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "layout":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->setCurrentJapaneseLayout(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$array;->entryValues_japanese_keyboard_portrait_options:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "mJapaneseLayouts":[Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->mJapaneseLayoutsValueList:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->mJapaneseLayoutsValueList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    .local v0, "japaneseLayout":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptions$5;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method
