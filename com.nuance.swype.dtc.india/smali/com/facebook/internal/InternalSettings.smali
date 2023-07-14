.class public Lcom/facebook/internal/InternalSettings;
.super Ljava/lang/Object;
.source "InternalSettings.java"


# static fields
.field private static volatile mCustomUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/internal/InternalSettings;->mCustomUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static setCustomUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "customUserAgent"    # Ljava/lang/String;

    .prologue
    .line 33
    sput-object p0, Lcom/facebook/internal/InternalSettings;->mCustomUserAgent:Ljava/lang/String;

    .line 34
    return-void
.end method
