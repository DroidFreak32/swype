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


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;

.field final synthetic val$abcCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$digitCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$punctuationCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$symbolCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 494
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
    .line 500
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 501
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$abcCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 502
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$punctuationCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 503
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$symbolCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 504
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$4;->val$digitCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 505
    const/4 v1, 0x1

    return v1
.end method
