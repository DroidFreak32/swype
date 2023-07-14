.class Lcom/nuance/swype/input/settings/SettingsPrefs$24;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createSkinToneDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$emojis:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$24;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$24;->val$emojis:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1331
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$24;->val$emojis:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getDefaultSkinToneColor()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinToneFromCode(I)Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v0

    .line 1332
    .local v0, "skinToneEnum":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$24;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1333
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/UserPreferences;->setDefaultEmojiSkin(Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;)V

    .line 1334
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$24;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setUserSelectEmojiSkinTone()V

    .line 1335
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$24;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$1300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1336
    return-void
.end method
