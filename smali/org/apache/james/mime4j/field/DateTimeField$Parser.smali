.class public Lorg/apache/james/mime4j/field/DateTimeField$Parser;
.super Ljava/lang/Object;
.source "DateTimeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/DateTimeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-static {p2}, Lorg/apache/james/mime4j/field/datetime/DateTime;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v2

    iget-object v0, v2, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    new-instance v2, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-direct {v2, p3, v0}, Lorg/apache/james/mime4j/field/DateTimeField;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parsing value \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method
