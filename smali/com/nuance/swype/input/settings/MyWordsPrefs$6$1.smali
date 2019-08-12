.class Lcom/nuance/swype/input/settings/MyWordsPrefs$6$1;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$6;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$6;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$6;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6$1;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6$1;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 374
    return-void
.end method
