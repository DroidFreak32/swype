.class Lcom/nuance/swype/input/settings/LanguageOptions$9;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;->onAdditionalLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

.field final synthetic val$language:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$9;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptions$9;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$9;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$9;->val$language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->access$000(Lcom/nuance/swype/input/settings/LanguageOptions;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 426
    return-void
.end method
