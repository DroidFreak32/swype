.class final Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
.super Ljava/lang/Object;
.source "ThemeLayoutAttributeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;
    }
.end annotation


# static fields
.field static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field final mLayoutInflateFactory:Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "ThemeLayoutAttributeParser"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;

    invoke-direct {v0}, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->mLayoutInflateFactory:Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;

    .line 36
    return-void
.end method


# virtual methods
.method final clear()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->mLayoutInflateFactory:Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;

    iget-object v0, v0, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->mThemeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    return-void
.end method
