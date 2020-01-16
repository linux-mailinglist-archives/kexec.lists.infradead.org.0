Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08AD13DE6D
	for <lists+kexec@lfdr.de>; Thu, 16 Jan 2020 16:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=apF7bPA60+IiHcPIf4PWexP7NdTO3ZVY9cnp4qHyFMg=; b=azVb4F2CsRYcg6
	JRr4H9YOP6/rUQYEevA+eZZgBPWUDn25uiDTU4UbU2hWfL4N18eQ7hZjDgKfK/r6PwyVOVcBr+wRe
	P9+Wq7UwfL8KkvwKXBxxkjYWb9LLPaIfThKYAZVmGX+/qOkQ1Kh/Ko8gQFuAm5w5S3b9jUUoAXQjc
	1Q9+HZ00PnDZCFmWQiifrAqWrkGPfXz7Q1nXWmagSUD977YS4RF0a2k771P6ko+2gPrGEcO4XzdFi
	+BBew4EQu7r0h5k/ra4ZusJHFSvIvviXXTyfkRmcVQ+nZLCIqTDNQHjdUv/A4jw8vsxhalQJT+EQA
	MCiU2d4H34BSIP/kpJWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6u6-0006Db-QK; Thu, 16 Jan 2020 15:17:50 +0000
Received: from mail-eopbgr1300048.outbound.protection.outlook.com
 ([40.107.130.48] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6u0-0006CN-LY
 for kexec@lists.infradead.org; Thu, 16 Jan 2020 15:17:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFw9LtIlbgcGU7vVUR3xlcbT53EatRjtiEEKD2GFKnByqDCNNntOgIoXi4mBZcXAqv3E8mig7VDUewTi+jv0IgKBTCHWYrvvwHMIUf3XnAxYyGecBHvWa2Z3PKDRmIxCGp9/R0PfWDTnSaljFbBxIH4TX20weQ67qEBJC7QtJRmGOqyrlFVXKhRbmTtrKjMM+id8plBt8hlCly2yaC6nCS9zan7EgTe55Stb3A4+Q1Ai7XdKl67sNPb/0bEf/kHG34KzMOmYC4L+5+8cVkBNby2qiHMJLCWQ9979rMCrO0oAnaFpDQywm0vQcBml1DiXhMVVHjnZDsfikwQGAFrPKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IpUPWmJR8L5Q8MUI5xOyDzQNRvkv64w2w/87Dzma6HQ=;
 b=NQX9a3q6xEKh8+ZWaDY8hDd2edQpToUV6d8fcpkwYdYvCh73Iu0xoXcqFcj5Y2wAhJabHzU3VPJd9U7df3CrqBII8dqWlU4nizobP6tsFy54VyqoaT1dAOs6B2S8HephfWgBUbumUfUVZNzLLWHGcl3qzubryFkA/59hdge4y/cw4AVsrdvO6DQGFkOm0GMc290LBz+YuGOSZe2zijqI9guxEOO1xve88pfU615bgMKM3ItlF4FylX3qQ4bRzUv01KvHV4EwULgSddb/5L3mFnfzeaIDgdeP1UP4AjKkymEOFYoWQ6EikKFXGidAWUB29zH4rGPdKBhDvlejelLdXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IpUPWmJR8L5Q8MUI5xOyDzQNRvkv64w2w/87Dzma6HQ=;
 b=xz81edGIOUnPyVp8kpFN87mw2nP+ziShFm/VjfskpxpiTCnHbmWYao81kEd24Ojq6Ujeh4KYhzci3+z8I+DZGPJ/BxjMu+pMMgC+IOzsUXJzOpW5BLVKjarkZnC3hbZeseiLs7KyNig79tjzFIaAJ1TQPsQ/7350lgbZws3IbSw=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB1948.jpnprd01.prod.outlook.com (52.133.182.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 15:17:37 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 15:17:37 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [ANNOUNCE] makedumpfile 1.6.7 is released
Thread-Topic: [ANNOUNCE] makedumpfile 1.6.7 is released
Thread-Index: AdXMfYM8KDL/M7tcR/2yYsrFJAtlPA==
Date: Thu, 16 Jan 2020 15:17:37 +0000
Message-ID: <TY2PR01MB5210DB8057FAC84DD3C0C687DD360@TY2PR01MB5210.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ffa598f-8297-48ac-2ebd-08d79a973876
x-ms-traffictypediagnostic: TY2PR01MB1948:
x-microsoft-antispam-prvs: <TY2PR01MB1948E961107D7DF98E9AFA8CDD360@TY2PR01MB1948.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(199004)(189003)(66476007)(76116006)(64756008)(66446008)(66556008)(7696005)(316002)(66946007)(85182001)(5660300002)(6506007)(52536014)(186003)(33656002)(26005)(6916009)(2906002)(86362001)(9686003)(55016002)(478600001)(966005)(81156014)(81166006)(8676002)(8936002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB1948;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZGzKjKI1s9xnukyUu9hVc7TNgxeEiDQb6r1hIpfa5JTlbBMsj+GRmr8ESFewGBQHmz0cUDGV2PsZOz90LxqSMfAzH//HRQUNdmTDF4MGpy4DMc6N0ULvMiDNh9lNC5VUBCu5n4bu3Ag8gfqOo9f7Ga2Szxi111/07ylIxKre498nlHqOagYHiiD21jENGMwrT5auN4f3zmqkQXDoKzcP/rJV6MywsJUUnfjP+Y6B3KcX2f4bQGDdiwCnX0o3uYv7kXpBoWRiMNxjmhmuwcdgLwu/LkJDYyZpOaO7dyj2nda+yZ9qS0WBC5BHrHlbgINKGUZv+QAwNRSfy5nUCeiTsMl+A3xZ7ziA2szx9LlPmLtrZyHKObYq/u8R550495u+Ie1J4bez+qm+uxK0vzDpbOz+9INEUXczTFkWXuKxLNmfkLvyGvnLxlxk6kiBSM0CAtP7oU8Njs0JEQdDSVwNnnOk6arOJa3CfcgXliXSB4g=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ffa598f-8297-48ac-2ebd-08d79a973876
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 15:17:37.3603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vhjUAijGIoFREmjr2qP7QyPfPH9ifL/UOSAJCjRpxEohh7pz2E/Lf8qKi1nHTm3NIF7qfmVnE5ka5dHvV2ABgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB1948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_071744_765378_B1F1E504 
X-CRM114-Status: UNSURE (   5.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hello,

I'm pleased to announce the release of makedumpfile-1.6.7.
Your comments/patches are welcome.

Main new features:
o Support for ELF extended numbering for large memory system
o Support for KASLR with -x makedumpfile option on s390x
o Support for newer kernels up to v5.4.8 (x86_64)

Changelog since v1.6.6:
a4fe839d25fb [PATCH] Support newer kernels up to v5.4 (Kazuhito Hagio)
6d6db1a40772 [PATCH] Update README file (Kazuhito Hagio)
577854dd62a6 [PATCH] s390: Use get_kaslr_offset_general() for s390x (Mikhail Zaslonko)
60cf280ebfe8 [PATCH] Pass 0 to get_kaslr_offset() in find_kaslr_offsets() (Kazuhito Hagio)
c6992684b51b [PATCH] Generalize get_kaslr_offset_arm64() for other architectures (Kazuhito Hagio)
49baecc7c13f [PATCH] Fix compilation warnings on 32-bit system (Kazuhito Hagio)
5519b3eba685 [PATCH] assign bitmap1/2 fd for subprocess in non-cyclic mode (Pingfan Liu)
180a3958c30d [PATCH] Print version and command line in debugging message (Kazuhito Hagio)
71e798cb1b85 [PATCH] Makefile: remove -lebl from LIBS when no libebl.a (Pingfan Liu)
82e6cce2219a [PATCH] Add support for ELF extended numbering (Kazuhito Hagio)
44dc8919f28c [PATCH] Fix wrong statistics in ELF format mode (Kazuhito Hagio)
56511628fa67 [PATCH] Fix off-by-one issue in exclude_nodata_pages() (Mikhail Zaslonko)
d22f8e1f8c88 [PATCH] Fix divide by zero in print_report() (Dave Jones)
aa5ee50a3396 [PATCH] Improve performance for non-thread compression with zlib (Kazuhito Hagio)
964116f403cd [PATCH] Cleanup: Remove unnecessary len_buf_out_* variables (Kazuhito Hagio)
8425342a52b2 [PATCH] Fix inconsistent return value from find_vmemmap() (Kazuhito Hagio)
b461971bfac0 [PATCH] Fix exclusion range in find_vmemmap_pages() (Kazuhito Hagio)
aa5ab4cf6c73 [PATCH] x86_64: Fix incorrect exclusion by -e option with KASLR (Kazuhito Hagio)
76f9cc0f3de2 [PATCH] arm64: fix get_kaslr_offset_arm64() to return kaslr_offset correctly (Kazuhito Hagio)
7bdb468c2c99 [PATCH] Increase SECTION_MAP_LAST_BIT to 4 (Kazuhito Hagio)
c1b834f80311 [PATCH] Do not proceed when get_num_dumpable_cyclic() fails (Kazuhito Hagio)

Explanation of makedumpfile:
  To shorten the size of the dumpfile and the time of creating the
  dumpfile, makedumpfile copies only the necessary pages for analysis
  to the dumpfile from /proc/vmcore. You can specify the kind of
  unnecessary pages with dump_level. If you want to shorten the size
  further, enable the compression of the page data.

Download:
  The latest makedumpfile can be downloaded from the following URL.
  https://sourceforge.net/projects/makedumpfile/

Thank you,
Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
