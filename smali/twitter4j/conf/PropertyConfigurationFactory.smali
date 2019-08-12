.class Ltwitter4j/conf/PropertyConfigurationFactory;
.super Ljava/lang/Object;
.source "PropertyConfigurationFactory.java"

# interfaces
.implements Ltwitter4j/conf/ConfigurationFactory;


# static fields
.field private static final ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>()V

    sput-object v0, Ltwitter4j/conf/PropertyConfigurationFactory;->ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;

    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public getInstance()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ltwitter4j/conf/PropertyConfigurationFactory;->ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .locals 1
    .param p1, "configTreePath"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0, p1}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "conf":Ltwitter4j/conf/PropertyConfiguration;
    invoke-virtual {v0}, Ltwitter4j/conf/PropertyConfiguration;->dumpConfiguration()V

    .line 51
    return-object v0
.end method
