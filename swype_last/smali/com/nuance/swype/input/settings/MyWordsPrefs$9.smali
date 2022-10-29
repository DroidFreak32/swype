.class Lcom/nuance/swype/input/settings/MyWordsPrefs$9;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 568
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iput-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    .line 570
    :cond_a
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$9;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 571
    const/4 v1, 0x1

    return v1
.end method
