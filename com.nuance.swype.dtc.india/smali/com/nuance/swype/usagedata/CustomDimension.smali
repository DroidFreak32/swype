.class public final Lcom/nuance/swype/usagedata/CustomDimension;
.super Ljava/lang/Object;
.source "CustomDimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/usagedata/CustomDimension$DictionaryBehavior;,
        Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;,
        Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    }
.end annotation


# direct methods
.method public static isEnabled(Z)Ljava/lang/String;
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 173
    if-eqz p0, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method
