.class Lcom/nuance/swype/input/settings/ChinesePrefs$5;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->updateCategoryDBCheckBoxes(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

.field final synthetic val$cdbPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->val$cdbPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 339
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$900(Lcom/nuance/swype/input/settings/ChinesePrefs;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->val$cdbPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 343
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showMaxCountdialog()V

    .line 348
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
