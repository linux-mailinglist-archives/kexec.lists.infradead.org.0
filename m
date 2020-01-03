Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE24F12FE27
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 21:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AK8y0pkLWpRRic7FwBMib/jwkUryNHe9qIaxBEmll9Y=; b=SdTHS4C80FPD1l
	wzXJJn92gQ/HEY93DqDo7xOqeenqoXmX2rmAdj0VhqoPm8/c0HrkIdTbMOyrfIjexRmwc4d6sycVs
	o5b7UBy1Jim2lTXhgKZ0BL6juv3Y+dmnG8YpMvMLWk47r2eVt9JixdxtwsPl7czO3oN9HNFVcjnX+
	1rMvGFtXuVLOacNCt1D/5OZPN8cChLCVJ4PFjorNC0EHrmnSsZtrA2NxnUwItOGBAFKlgyWRffS0e
	QWXOggHava5/gupxbnRmBwShW3D9YYYX8yP9excPJnklX1PBEr5n32dWqLC1CWvyj7omgvKEQBzKC
	mnIGn8FGz/e1FXSJRqGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inTzB-0003QQ-O8; Fri, 03 Jan 2020 20:55:57 +0000
Received: from mail-eopbgr1320051.outbound.protection.outlook.com
 ([40.107.132.51] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inTz7-0003O2-NX
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 20:55:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LneBci5twotluQuDElpFv/t1lTpvKB+Q4X72OMQLGW1DdKbjiLl2ssZwNEaLAd38auAfrUXpGrZSKYrDREB9JpeiSAa6hlNXBIKTGmg0Qv56xljE/EdR6R0OuCq02DIN7x6ItUiScsQIL1/bboAjYjWWjJ1qpEW0EpTNOIh42M63bTrkodiajDnL1zsoGO7oGH0KlwiFE5cSAXft5E/IrCT4CQKmxnymlKGNsWwoLXjPRwDFSMCGy1b5++FJMqWCtSH6fZRB2Gh44OfWARAZCZ+KXlouqknQE0TAhOHPezFcp9WQU1J83GtzQVGrFrBy6yAMNwOyjgjtHWNVQAFLNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KtzA/63AEVJYq34p/TnZ3dhqArFm/9NBYaqNA2Tb1t0=;
 b=L/m22z4qusedEwlvqMDHk/mhVwpjC2sznRjhh4VPzwvVuy0A6/1/iQUqkDgB87FgX7U1BwgpIUWY3loaBSS+QWrDTg1NGQKGntA3kcKdpTwlYTiW5oGFKliRY2+hWcaTpRBKt1/sRut2UCQZvBJoiyL2IfXlXQySxQtNLcBrP9I67/+MvPAj3MNI8apj7LLYLrv2SP6QCgtFsZn5zEembO27NU/Lz6bbJR3OWLmkKD+SOSslHPgEXOHj8O/rSG0u8M7PqNOVdc1I4oiB6C99n9KewCeGwk85oEVnQwCDm4xI1V7juqndpWiaj28pUzRu9+eml5GIEiUi/0zAWFLxCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KtzA/63AEVJYq34p/TnZ3dhqArFm/9NBYaqNA2Tb1t0=;
 b=eKZcs2NG9UEDegdjaC0mn0zsNTnqZpn9SThAe07VmDUVzIdItFvBFTJJOIRyveHQsaPC2HF7CcN0JKSZ6F9HX/4FRucjUsQ6KWDVTe4NzgWqmWnncX/rVS15W7aa6lthfsEGcG0CjeagfxL1IaG5uRZ4Kl1emeMnJUpiptQ6enc=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2SPR01MB0015.jpnprd01.prod.outlook.com (20.177.150.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Fri, 3 Jan 2020 20:55:42 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::f580:4b2c:c69c:c28c]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::f580:4b2c:c69c:c28c%5]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 20:55:42 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: lijiang <lijiang@redhat.com>
Subject: RE: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Topic: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Index: AQHVu539YdIeeoZhrkK9VP733OiLmafLzJ4AgAJPLKCABGEPgIAGvFLg
Date: Fri, 3 Jan 2020 20:55:41 +0000
Message-ID: <TY2PR01MB5210EC16730BC6D382D5E543DD230@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
 <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03598540@BPXM09GP.gisp.nec.co.jp>
 <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
 <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
 <TY2PR01MB5210EBE26FC1603B3E7FF491DD2A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <ecaa7f62-d58f-080d-27de-176b3d592a11@redhat.com>
In-Reply-To: <ecaa7f62-d58f-080d-27de-176b3d592a11@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13887b81-139f-4e54-7237-08d7908f4bba
x-ms-traffictypediagnostic: TY2SPR01MB0015:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2SPR01MB00153E0B5ECC1EBEB0034E66DD230@TY2SPR01MB0015.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(396003)(136003)(13464003)(199004)(189003)(7696005)(71200400001)(6506007)(64756008)(478600001)(81156014)(66446008)(81166006)(54906003)(316002)(66556008)(26005)(8936002)(86362001)(8676002)(2906002)(52536014)(186003)(9686003)(4326008)(85182001)(5660300002)(55016002)(6916009)(33656002)(966005)(66946007)(66476007)(76116006)(317694003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2SPR01MB0015;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DNXLbUBSC+HQKoehQbwPdKAdoqehLSuxo6WntKwlumaV6qupN7QH014C4XmMEmZaYwpvJvsIPgIhPrYbUbrsXisvxdvWv9F6mAaK1VTr00t6pVBlNuk6GBONfegq8lvaNKSC5fU5ZxGHdPsFgX8EnZuUgPLqYiyJoPQ46NCtQvxYmWc5o+LopfcGsE4awXiwYRVTqtiZxOqYmJwc3Uv7bnTNtb1x57njwqNV6GOvf00ISphq4HDtsZ5j7bivU3JoIFOvEK2cbHOqJ1evrise/rxRDNz0cdd0Fk9v12jN1iUt0PbEoQot7rAGpbIS0oGqreH50I5sK12K7EkwVmUdEgTYFN1twjd4+bEQbqtfF1pupy8MJuHAQaV30xg9TIsKJnn/ilit4EmrX7o+xAxE9IPV2mzikMVBlGiydcTJSWh21MAxDGWaOwyK3vItU5MKs4RDB3bjygX+s5n6ROsphRFDmvgzrs1eK+hPGG+zddFQsAIPtzlAN+Mhe3kX6j7JxKYZAGw/kv7cok62WFeAUfMEK7P76sc2fWexwHzppDyG1TlbA6FtLyaxw9hbFjne
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13887b81-139f-4e54-7237-08d7908f4bba
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 20:55:42.0498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sAxtNgb22gt/Q+8NngaOCZSPVkjJGsovqBecVlKl3jUoII0cXbPLcxZtmJjg0mwTiAMfKFuGQ0CQ/lGzVeu//g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2SPR01MB0015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_125553_819809_7CFED7E3 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.51 listed in list.dnswl.org]
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
Cc: Mikhail Zaslonko <zaslonko@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Lianbo, Mikhail,

> -----Original Message-----
> >>
> >> In addition, the above code confused me, it will always return 0 on s390(please refer to my logs).
> >
> > The aim of get_kaslr_offset() here is only setting info->kaslr_offset to the value
> > from vmcoreinfo for the SYMBOL_INIT() macro.
> > (get_kaslr_offset() returns the kaslr offset in the resolve_config_entry().)
> >
> Thanks for your explanation, Kazu.
> 
> > But yeah, the get_kaslr_offset(SYMBOL(_stext)) is confusing and not good.
> > Passing 0 might be a bit better..?
> >
> Yes, looks good to me.

OK, I pushed an additional patch fixing it to the test branch:
https://github.com/k-hagio/makedumpfile/tree/add-get_kaslr_offset_general
Thanks Lianbo for pointing it out.

Mikhail, if you update your patch on top of the tree above,
I'll merge it upstream.

Thanks,
Kazu

P.S. My email address has been changed to k-hagio-ab@nec.com.
Please send email to this address in the future. Thanks.
(Ugh, it seems I cannot remove my kanji name in the From: field..)
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
