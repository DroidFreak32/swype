.class Lcom/nuance/swype/input/settings/SettingsPrefs$22;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

.field final synthetic val$displayText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Lcom/nuance/swype/input/settings/CandidateSizeSettingView;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->val$displayText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p2

    const v3, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->changedProgress:F
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$902(Lcom/nuance/swype/input/settings/SettingsPrefs;F)F

    .line 1176
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    # setter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->scalingFactor:I
    invoke-static {v0, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$1002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I

    .line 1177
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->changedProgress:F
    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$900(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setTextSize(F)V

    .line 1178
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$22;->val$displayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setDisplayText(Ljava/lang/String;)V

    .line 1179
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1185
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1191
    return-void
.end method
