.class public Lcom/fsck/k9/preferences/TimePickerPreference;
.super Landroid/preference/DialogPreference;
.source "TimePickerPreference.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private defaultValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->setPersistent(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->setPersistent(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 69
    new-instance v2, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "tp":Landroid/widget/TimePicker;
    invoke-virtual {v2, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 72
    iget-object v4, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/preferences/TimePickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "[0-2]*[0-9]:[0-5]*[0-9]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    move v0, v3

    .line 73
    .local v0, "h":I
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/preferences/TimePickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "[0-2]*[0-9]:[0-5]*[0-9]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    move v1, v3

    .line 74
    .local v1, "m":I
    :goto_1
    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 80
    :cond_2
    return-object v2

    .line 72
    .end local v0    # "h":I
    .end local v1    # "m":I
    :cond_3
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 73
    .restart local v0    # "h":I
    :cond_4
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const-string v0, "%02d:%02d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->persistString(Ljava/lang/String;)Z

    .line 95
    const-string v0, "%02d:%02d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 110
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 121
    .end local p1    # "defaultValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "defaultValue":Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    .line 115
    check-cast v0, Ljava/lang/String;

    const-string v1, "[0-2]*[0-9]:[0-5]*[0-9]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Ljava/lang/String;

    .end local p1    # "defaultValue":Ljava/lang/Object;
    iput-object p1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->defaultValue:Ljava/lang/String;

    goto :goto_0
.end method
