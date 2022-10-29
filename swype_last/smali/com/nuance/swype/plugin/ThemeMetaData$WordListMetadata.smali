.class public final Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;
.super Ljava/lang/Object;
.source "ThemeMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/plugin/ThemeMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordListMetadata"
.end annotation


# instance fields
.field public final fileName:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->type:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->version:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;->fileName:Ljava/lang/String;

    .line 85
    return-void
.end method
