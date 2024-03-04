.class Lcom/nuance/swype/input/settings/ThemesPrefs$8;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

.field final synthetic val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

.field final synthetic val$displayText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Lcom/nuance/swype/input/settings/CandidateSizeSettingView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->val$displayText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p2

    const v3, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$402(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F

    .line 397
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setTextSize(F)V

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$8;->val$displayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setDisplayText(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 405
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 411
    return-void
.end method
