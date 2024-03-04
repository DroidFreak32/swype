.class Lcom/nuance/swype/input/settings/InputPrefs$4;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;

.field final synthetic val$abcCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$digitCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$punctuationCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$symbolCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 535
    const-class v0, Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/settings/InputPrefs$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$abcCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$punctuationCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$symbolCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$digitCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 538
    sget-boolean v1, Lcom/nuance/swype/input/settings/InputPrefs$4;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 539
    :cond_0
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 540
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$abcCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 541
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$punctuationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 542
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$symbolCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 543
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$digitCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 544
    const/4 v1, 0x1

    return v1
.end method
