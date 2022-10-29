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
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 173
    if-eqz p0, :cond_6

    const-string/jumbo v0, "on"

    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "off"

    goto :goto_5
.end method
