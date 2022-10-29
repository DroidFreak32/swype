.class Lcom/nuance/swype/input/settings/LanguageOptions$4;
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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/preference/KeyboardListAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$4;->val$keyboardAdapter:Lcom/nuance/swype/preference/KeyboardListAdapter;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/preference/KeyboardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 266
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    .line 267
    return-void
.end method
