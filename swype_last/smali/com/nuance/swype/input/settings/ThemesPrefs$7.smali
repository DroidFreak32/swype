.class Lcom/nuance/swype/input/settings/ThemesPrefs$7;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

.field final synthetic val$valueTextPortrait:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->val$valueTextPortrait:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    add-int/lit8 v1, p2, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    # setter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$202(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F

    .line 324
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->val$valueTextPortrait:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 325
    # invokes: Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->percent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x8

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 333
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 339
    return-void
.end method
