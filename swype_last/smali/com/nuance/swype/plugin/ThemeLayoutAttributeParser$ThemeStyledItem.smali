.class public final Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;
.super Ljava/lang/Object;
.source "ThemeLayoutAttributeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeStyledItem"
.end annotation


# instance fields
.field id:I

.field mThemeAttrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/plugin/ThemeAttrAssociation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->mThemeAttrs:Ljava/util/ArrayList;

    return-void
.end method
