.class Lcom/nuance/swype/input/settings/LanguageOptions$3;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->createLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

.field final synthetic val$languageDownloadPref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$3;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$3;->val$languageDownloadPref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$3;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->access$000(Lcom/nuance/swype/input/settings/LanguageOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$3;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$3;->val$languageDownloadPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showLanguageDownload(Landroid/preference/Preference;)V

    .line 195
    :cond_0
    return-void
.end method
