Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B504617EB86
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 22:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWalMYwb14N/Rv96hIZX0HMc9sZRDadAsJSZoSL4N6A=; b=FMzb28NCVALxwB
	H8PXR6+8TWmrgoOCB7KQX7tfk/HkwpFWiBj9pHebOnpbpD71MMLVziblXv0ylTVQ60t7BG48aaEWm
	L/W/0WxoBcJ4KfSIopb7egwzfQNpl1Jw8YIUW+fh+NihZH7rrZY8o5bQviPelJrsXpDfbCLoqrFA+
	ttoCEViDAKQ5so025L9m9UttMmjegHj9SMfXE9noojp58e0ACdFmjL115kHyq9GkIxqwuYb8JBJiv
	jymJOAwsGLfyvCUxG6gan6dDh/QA+Pe26dS2PlIY4wLvsUqfFi2HqtfK4fRQugcJ1MfkSoClQ8p9k
	AibVr53BW9a8JXKiqo9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBQGL-0001uX-Lv; Mon, 09 Mar 2020 21:48:37 +0000
Received: from mail-eopbgr1320040.outbound.protection.outlook.com
 ([40.107.132.40] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBQGI-0001uC-9u
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 21:48:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LsxsLlrBavHzgwt5RqcJONQZcWbGIFu5jFb0xlsE4APzSr0Kbn8JXF4KmT6GNSHgn+xgUk/nspo+lb1BLGXk8cYF5fwyMVRH9scUTei6UgnZJuGXtsBNVCcXlY45YKjaAS6R4TNofur0MAB/QlDMed9RZNkXGtA/LODIN/UhsbdAFURhK7G2ewAHAhu/ihzGu4P4epf9keYwbqvHp+0M/6lbuOPwBA0vGcqtDjJj6e50adTze3piH+TxGahLkVc8MW6aPjWJhcuacXpmbNh7lvrBTQMHf+pxXuR3XGC30L0CZK3ChbdqBZ8eH4i4MzGi4qfIEoe4aGlm8gz3h5jGXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZjiQ78giRPfxcR5Ev6l2DJgezaEQqBiN9m1klBdSgro=;
 b=W2dbJuGYAZrBgNwD3y5Z9TeSfX0UdGwQKD/I6SNuX4VNqvSlH62HK4zqTPVfkHKMZ1QACKhr4MjQwYJh3XZzC/mhvt16r+QeWgS8owcoVfVB8D109Lpxo4tdLnnCNtWgQASmSsFaFqfBlaNeVplufztH1f/FMs6T3tj9g7PCvkaGOhwdo52HOW7sCQaL6jnRMZntnX0YybZlertYxTJpxpCVQ5NWjlSFFWSBBxABBs+CQ/PbUxD3tJfNkBOby3T4KqErJA1LFLmShhlo0vkUMBERT/HeJAVPodNlmGG7PWsWUe0Wdlhv/bTqrgdkADSXsqbomkDWyOx9ZKUDXUR+1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZjiQ78giRPfxcR5Ev6l2DJgezaEQqBiN9m1klBdSgro=;
 b=YFNAeWBUFqPbRc1I1jOlmR/L54XSTZEVG6zXo04X0jOkC+j9LT/UtQgN9pFAv8e5b84gMX+CzaAFDW/Nwb5+18FaMI7hQPVYucvHKlFqiKy6GVW5f6Srm1KzMOEc1Gt8/5C8N95Lu5TR1ARsOVESBjzrk737yd2MC2sWnUag994=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB5020.jpnprd01.prod.outlook.com (20.179.169.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Mon, 9 Mar 2020 21:48:30 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9%5]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 21:48:30 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>, kexec mailing list
 <kexec@lists.infradead.org>, Bhupesh Sharma <bhsharma@redhat.com>, Ganapatrao
 Prabhakerrao Kulkarni <gkulkarni@marvell.com>, Kamlakant Patel
 <kamlakantp@marvell.com>, Prabhakar Kushwaha <pkushwaha@marvell.com>
Subject: RE: makedumpfile: undefined reference for lzma function during build
Thread-Topic: makedumpfile: undefined reference for lzma function during build
Thread-Index: AQHV9hv+e9fSbsU2f0qg44IUXLB3GahAb0lAgABbWKA=
Date: Mon, 9 Mar 2020 21:48:30 +0000
Message-ID: <TY2PR01MB521003BAFBEFFCF36BB8F2AFDDFE0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <CAJ2QiJKqZbi7V9nd+=NFUnKBhTBqqbm=-pkuLQ0P3s=1hLgOmQ@mail.gmail.com>
 <TY2PR01MB52101D28462041E10151C4C3DDFE0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
In-Reply-To: <TY2PR01MB52101D28462041E10151C4C3DDFE0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e1ee179-f579-4074-fc51-08d7c4739b5c
x-ms-traffictypediagnostic: TY2PR01MB5020:
x-microsoft-antispam-prvs: <TY2PR01MB5020B5289EDB44809BD68B50DDFE0@TY2PR01MB5020.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(186003)(478600001)(33656002)(2940100002)(71200400001)(86362001)(85182001)(966005)(2906002)(8936002)(81166006)(76116006)(26005)(8676002)(110136005)(81156014)(66946007)(316002)(66476007)(52536014)(6506007)(7696005)(5660300002)(66556008)(64756008)(66446008)(9686003)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB5020;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q9LdldQOClWirX3KcmFPOe3UwVAQJ30036vTqVMcTlARcS6hRSBN0fQpKQSAjoWTqv+jBZuHBiWRSlBlyZ0jU7g3ZMkrvfImAlsanxDJRqCNWU9F9sc70bsNtHiKo6YiU5ezlSIhIk5hSeQhcUNLJu1RWq8pYr5Zvk/J52qBCEHBRRsDmqYTkN96nCD/m3S9Uk8TEzU0KkY/lPmwU5BqrMTbUL+8EqbPUHPfN5b2U7/LtotJHZ7pys3qfTYbeYMEHIlN9QsVxZIjLcUfJPxLoQq5u+/0C+yC2EzRG6VvtLIs+CYeM5GP0qj03NxOQQ6xiKC5A34/yCG5fH7NqfF+exs/w1tSa3LSSycjLRsZ+kHl2O3xjBG5BkrLi6lmTdSZi456G6/0MqOy4+1EAsFhzOhD/OKFNfB1g6nC9KxuO/YgrZVM+cHzJgpAZCUNSyV/rpdTlQg4ako8H6zOOf9AJtTzRHA7WlwnFTxBb1qhk7tr8QEhPaYurusiBTvVmzo7bjALF316ev7qHchPs+BNxA==
x-ms-exchange-antispam-messagedata: jL7YojZlApkavNGho51MgszJvtlstUXOOnIOFsqKk39rPqosy0+0YgbP1aI5mtfB6tppbWZY/Q4c109jWdiKG+hj9b+MsOkSVme01qjAExEsZXt3JAr/iDu6sF2CZ8VQFCjD7+gbxcISuLjuG302lQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e1ee179-f579-4074-fc51-08d7c4739b5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 21:48:30.1251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L0bLdNumlXiTtE4e569aySTLZsit23rhAW+wITK3bXef9hE/FzGk0Wkg5E5cWp4VbHlvpxaexQ7TPQywlX2QdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB5020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_144834_426230_C72479B1 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

-----Original Message-----
> Hi Prabhakar,
> 
> Thank you for reporting this.
> 
> -----Original Message-----
> > Hi All,
> >
> > While building makedumpfile for AARM64 Thunder X2, I am getting this error
> >
> > cc  -g -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE
> > -D_LARGEFILE64_SOURCE -DVERSION='"1.6.7"' -DRELEASE_DATE='"16 Jan
> > 2020"' -D__aarch64__   print_info.o dwarf_info.o elf_info.o
> > erase_info.o sadump_info.o cache.o tools.o arch/arm.o arch/arm64.o
> > arch/x86.o arch/x86_64.o arch/ia64.o arch/ppc64.o arch/s390x.o
> > arch/ppc.o arch/sparc64.o -rdynamic -o makedumpfile makedumpfile.c
> > -lpthread -static -ldw -lbz2 -ldl -lelf -lz  -lebl
> > erase_info.o: In function `process_eppic_file':
> > /home/prabhakar/MERGE/OPENSRC/APPL/makedumpfile-code/erase_info.c:2202:
> > warning: Using 'dlopen' in statically linked applications requires at
> > runtime the shared libraries from the glibc version used for linking
> > //usr/local/lib/libdw.a(lzma.o): In function `__libdw_unlzma':
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:233:
> > undefined reference to `lzma_auto_decoder'
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:248:
> > undefined reference to `lzma_end'
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:267:
> > undefined reference to `lzma_code'
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
> > undefined reference to `lzma_end'
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:236:
> > undefined reference to `lzma_end'
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
> > undefined reference to `lzma_end'
> > /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
> > undefined reference to `lzma_end'
> > collect2: error: ld returned 1 exit status
> > Makefile:100: recipe for target 'makedumpfile' failed
> >
> > Source code: https://git.code.sf.net/p/makedumpfile/code
> > Top commit e7301654029330bbf49693002fa72223f9b3fb36 (HEAD -> master,
> > tag: Released-1-6-7, origin/master, origin/HEAD)
> > Author: Kazuhito Hagio <k-hagio-ab@nec.com>
> > Date:   Wed Jan 15 13:09:56 2020 -0500
> >
> >     [v1.6.7] Update version
> >
> >     Update makedumpfile to version 1.6.7.
> >
> >     Signed-off-by: Kazuhito Hagio <k-hagio-ab@nec.com>
> >
> >
> > I googled and found
> > http://lists.infradead.org/pipermail/kexec/2017-May/018760.html i.e.
> > diff --git a/Makefile b/Makefile
> > index 388faf7..810a7a0 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
> >  SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c
> > arch/ia64.c arch/ppc64.c arch/s390x.c arch/ppc.c arch/sparc64.c
> >  OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
> >
> > -LIBS = -ldw -lbz2 -ldl -lelf -lz
> > +LIBS = -ldw -lbz2 -ldl -lelf -lz -llzma
> >  ifneq ($(LINKTYPE), dynamic)
> >  LIBS := -static $(LIBS)
> >  endif
> >
> > After adding this change, no more build error.This change was required
> > for spac64. So do we need similar changes for AARM64 platform also.
> 
> I confirmed that it also occurred on x86_64 without LINKTYPE=dynamic.
> The -ldw with -static option seems to require -llzma, and makedumpfile
> doesn't use liblzma directly, so I will merge this:
> 
> diff --git a/Makefile b/Makefile
> index 868eea6..ebef867 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -52,7 +52,7 @@ OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
> 
>  LIBS = -ldw -lbz2 -ldl -lelf -lz
>  ifneq ($(LINKTYPE), dynamic)
> -LIBS := -static $(LIBS)
> +LIBS := -static $(LIBS) -llzma
>  endif
> 
>  ifeq ($(USELZO), on)

Merged this with another fix:
https://sourceforge.net/p/makedumpfile/code/ci/12250baa02584dc713cdb1a12fb366f643fdc8b3/

Thanks,
Kazu


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
