.class Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$WnnWordComparator;
.super Ljava/lang/Object;
.source "OpenWnnEngineJAJP.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WnnWordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$1;)V
    .registers 2
    .param p1, "x0"    # Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$1;

    .prologue
    .line 647
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$WnnWordComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 652
    move-object v0, p1

    check-cast v0, Ljp/co/omronsoft/openwnn/WnnWord;

    .local v0, "wnnWord1":Ljp/co/omronsoft/openwnn/WnnWord;
    move-object v1, p2

    .line 653
    check-cast v1, Ljp/co/omronsoft/openwnn/WnnWord;

    .line 654
    .local v1, "wnnWord2":Ljp/co/omronsoft/openwnn/WnnWord;
    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    iget-object v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
