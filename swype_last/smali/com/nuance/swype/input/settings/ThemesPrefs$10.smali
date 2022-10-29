.class Lcom/nuance/swype/input/settings/ThemesPrefs$10;
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
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->val$displayText:Ljava/lang/String;

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
    .line 454
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p2

    const v3, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$502(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F

    .line 455
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$500(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setTextSize(F)V

    .line 456
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->val$cs:Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$10;->val$displayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setDisplayText(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 463
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 469
    return-void
.end method
