.class Lcom/nuance/swype/input/settings/LanguageOptions$10;
.super Ljava/lang/Object;
.source "LanguageOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptions;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptions;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptions$10;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptions$10;->this$0:Lcom/nuance/swype/input/settings/LanguageOptions;

    # invokes: Lcom/nuance/swype/input/settings/LanguageOptions;->handleDownloadClick()Z
    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->access$100(Lcom/nuance/swype/input/settings/LanguageOptions;)Z

    move-result v0

    return v0
.end method
