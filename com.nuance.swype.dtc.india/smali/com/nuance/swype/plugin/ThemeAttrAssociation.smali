.class final Lcom/nuance/swype/plugin/ThemeAttrAssociation;
.super Ljava/lang/Object;
.source "ThemeAttrAssociation.java"


# instance fields
.field final attrName:Ljava/lang/String;

.field final attrStyleableFullName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrStyleableFullName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrStyleableFullName:Ljava/lang/String;

    .line 14
    return-void
.end method
