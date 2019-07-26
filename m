Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F9376493
	for <lists+kexec@lfdr.de>; Fri, 26 Jul 2019 13:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GHDujsUWWw9Cwmmhgk1UB9ykCDrvS3Dps1ZqK78x5Ag=; b=K7wt0w6B8BB4wg
	CbH/kk5lMQNQzaUeaaiqtZWDbL2A1B9fxTSdSQ6FcJxg6j68ISqEidaeXJiTvqNFh05uwCAwofL/v
	EhXOQ2pf5JuLozHFClzXs+ooLbSeL6wzoWWO4vUJOR0h3835wNlYpZIre02VrUbTtnwC2+I7rry5r
	0utQER6GrKvTjVPI2xnEAYpr7u5ho+cdUYoiV+xOlA3mgkO4LDjv4xKxfSl+09mcMgKyBkCBDAYmb
	DYHE4NKfujGO6NgV02cMoyYzdUUwzWuZ4Hs569DoMXX73o+UwPbnx+tOFGcbJqphyEj1HvSoc0Xzj
	uuydVyXm/kaiLHw+Tcwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyRr-00066S-R3; Fri, 26 Jul 2019 11:31:43 +0000
Received: from mail-eopbgr70107.outbound.protection.outlook.com
 ([40.107.7.107] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyRL-0005hd-J0
 for kexec@lists.infradead.org; Fri, 26 Jul 2019 11:31:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zlit45eokYSGz9RYZH9xAUXInqmki8xfefGm37V4DovkvmyGuw1CoEmo7G6rMxYoqNs4MWBXmEf2q37GfL83845EXse2qx/E0EjlxRkfkN5eHlQCOJ3f1Ez+Nrq2Cmg2dqhf4rZKj6BAfqr4bHnflRmww2ANvcil+wB4IfFT+znePr08o+r/FvUDZ5bXMzkBuslJhGFsxBIDi9UpVvbE4zxdYbl0/F/PK76Bdzp/LDDVqaX0RBcP9uyQh5axHP2J+sRXrafCs8hbvk61jbd63qmGcFLRt8oeE15TKiEctrV7Er2shuoUJ6U2U1KeVIhrohKX+K6zoujh4MyHblVVHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obfC8WTJP/0mBY28ZwdfQ17XLQ5N2Pt9emksbK54Z4M=;
 b=Z/Mr/HLvGmAENhUcrpTz5YhzgP07+mePohPsjdpABsUIXcq2VZE8XF5UDlE6G+LJpmYzbsochyR4Ti55yAhOPIqiYN5T0pAfU+rS/onVEWjfCymj62WAvOYXJGX4aMIDK1ZcFkPraouwnuGdWLTgs7cvz7H3/UvgJejV1jupQANuKv3j3VBV5870RATvtnsroGFlAM53piK9lYP5xMlJuYxjSQc3hfMIJZf59pXo6gC2lJqkG0hzfVoya6+JNvx1ukpZO2C1IQVhUPUxenGhkjfqvOGNSHCUf4TUPwiGcABJFZslctys0ctCkq5Sw0zwlSd8vgbmLrUjfEpk48gWew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nedap.com;dmarc=pass action=none
 header.from=nedap.com;dkim=pass header.d=nedap.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nedap.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obfC8WTJP/0mBY28ZwdfQ17XLQ5N2Pt9emksbK54Z4M=;
 b=npKFg8Vs0emhm5J59DGqPGyKOhnCalWxXZmtiWTi1clbTcr220+wAp1VTDkXOtwNl9sww4eD0w50F52f1F5KqhCr8xrYzvN0+yiLkTl7Jj99M12VvDn88EQOv//D5HyS0kJYURZ7bADzBY0E0gAfIRAcJXDzCirytsd8UvniFdQ=
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM (20.178.205.17) by
 VI1PR10MB2782.EURPRD10.PROD.OUTLOOK.COM (20.178.204.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Fri, 26 Jul 2019 11:31:06 +0000
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd]) by VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd%6]) with mapi id 15.20.2115.005; Fri, 26 Jul 2019
 11:31:06 +0000
From: Maikel Coenen <maikel.coenen@nedap.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: No compression technique of zImage/uImage detected - ARM
Thread-Topic: No compression technique of zImage/uImage detected - ARM
Thread-Index: AQHVQ6WcwBDaBBmoFU2hfxShZ9sOvw==
Date: Fri, 26 Jul 2019 11:31:05 +0000
Message-ID: <06B8A796-5772-435E-B98C-9C0D783CB634@nedap.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maikel.coenen@nedap.com; 
x-originating-ip: [213.160.213.92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2018a2d9-68ca-46d7-2413-08d711bcbf84
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR10MB2782; 
x-ms-traffictypediagnostic: VI1PR10MB2782:
x-microsoft-antispam-prvs: <VI1PR10MB2782B58EE1154B12F81145B2EEC00@VI1PR10MB2782.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(396003)(346002)(376002)(366004)(199004)(189003)(305945005)(1730700003)(256004)(81166006)(3846002)(2501003)(8936002)(478600001)(36756003)(33656002)(6116002)(86362001)(25786009)(81156014)(7736002)(66476007)(68736007)(2616005)(8676002)(26005)(316002)(71200400001)(6436002)(66446008)(186003)(6486002)(6512007)(2906002)(71190400001)(102836004)(66556008)(5640700003)(64756008)(66946007)(76116006)(6916009)(44832011)(99286004)(91956017)(486006)(2351001)(476003)(14454004)(53936002)(6506007)(5660300002)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2782;
 H:VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nedap.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dPBC2ghIFOsZfxK3i8f9tPxabwaggG6KeymbdzD4jkpyh5PWxk16K12k+mpBh2Cc2XH+usfm8qO/hU4Lpvl2plGz3zSsxfvLf9msJh559rtmUOR2bQmNoWOCrJH2hYUEPs06lcg2el8SsuzV2Kqi/Mcrlf+S5c8YZDYX8ZqZ9CVsQNIeckFuhAJDQnxiknpHpPQBK3zRvz/3KuEdl6ygFrWMvn3mwvBbUQqMzBsF4oBDm0MVFHJA9LmXYIrLnxdY2e2EN1wx7UqJtyFLWAzdDpW7lzgSKI+J/Nhriunm1qBQoU9SFivjpAGSpLMEo5HWHo4e3UKQW8Cc9y8hnVE6dHSIJzOgCuSBKhhVeIicCy0gr5r4YQz8sTuzhMA3Dq9BjC0beKj0TJpdFehIaaSz3OSuJ3NsjicqoQxiBYAM+AU=
Content-ID: <1481C36B00F65149BF6B8C4A5F31619F@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: nedap.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2018a2d9-68ca-46d7-2413-08d711bcbf84
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 11:31:05.9587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d21d161-0ae7-4a24-94cf-df0881e2fa96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maikel.coenen@nedap.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_043111_878670_2BD30811 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

PiBIaSwNCj4gIA0KPiBJIGhhdmUgbWV0IGFuIGlzc3VlIGR1cmluZyBsb2FkaW5nIGEgbmV3IGtl
cm5lbCB3aXRoIEtleGVjIG9uIGFuIEFSTXY1IFNvQy4gVGhlIGtlcm5lbCBpcyBhIDQuMTkgd2l0
aCBHemlwIGNvbXByZXNzaW9uIGJ1dCBkdXJpbmcgbG9hZGluZyBLZXhlYyBkb2VzIG5vdCByZWNv
Z25pemUgdGhlIGNvbXByZXNzaW9uLiANCj4gIA0KPiBJZiBJIGxvYWQgdGhlIG5ldyBrZXJuZWwg
YW5kIGR0YiB3aXRoOg0KPiAgDQo+IGtleGVjIC1sIC9ib290L3pJbWFnZSAtZCAtLWR0Yj0vYm9v
dC91LWJvb3QuZHRiDQo+ICANCj4gVGhlIG91dHB1dCBpczoNCj4gIA0KPiBUcnkgZ3ppcCBkZWNv
bXByZXNzaW9uLg0KPiBUcnkgTFpNQSBkZWNvbXByZXNzaW9uLg0KPiBsem1hX2RlY29tcHJlc3Nf
ZmlsZTogcmVhZCBvbiAvYm9vdC96SW1hZ2Ugb2YgNjU1MzYgYnl0ZXMgZmFpbGVkDQo+IGtlcm5l
bDogMHhiNmE2ODAwOCBrZXJuZWxfc2l6ZTogMHg0OTRkMzANCj4gTUVNT1JZIFJBTkdFUw0KPiAw
MDAwMDAwMDAwMDAwMDAwLTAwMDAwMDAwMGZmZmZmZmYgKDApDQo+IHpJbWFnZSBoZWFkZXI6IDB4
MDE2ZjI4MTggMHgwMDAwMDAwMCAweDAwNDk0ZDMwDQo+IHpJbWFnZSBzaXplIDB4NDk0ZDMwLCBm
aWxlIHNpemUgMHg0OTRkMzANCj4ga2V4ZWNfbG9hZDogZW50cnkgPSAweDgwMDAgZmxhZ3MgPSAw
eDI4MDAwMA0KPiBucl9zZWdtZW50cyA9IDINCj4gc2VnbWVudFswXS5idWYgICA9IDB4YjZhNjgw
MDgNCj4gc2VnbWVudFswXS5idWZzeiA9IDB4NDk0ZDMwDQo+IHNlZ21lbnRbMF0ubWVtICAgPSAw
eDgwMDANCj4gc2VnbWVudFswXS5tZW1zeiA9IDB4NDk1MDAwDQo+IHNlZ21lbnRbMV0uYnVmICAg
PSAweDFmY2YwNjANCj4gc2VnbWVudFsxXS5idWZzeiA9IDB4MjQ1Yg0KPiBzZWdtZW50WzFdLm1l
bSAgID0gMHgxNmYyMDAwDQo+IHNlZ21lbnRbMV0ubWVtc3ogPSAweDMwMDANCj4gIA0KPiBMb29r
aW5nIGF0IHRoZSBkZWJ1ZywgdGhlIGZ1bmN0aW9uIGd6ZGlyZWN0IHJldHVybnMg4oCcMeKAnSB3
aGljaCBpbmRpY2F0ZXMgdGhlIGtlcm5lbCBjb21wcmVzc2lvbiBpcyBub3Qgb2YgZ3ppcCBidXQg
SSA+IGRlZmluaXRlbHkgdXNlIGd6aXAuIA0KPiBJIGFsc28gdGVzdGVkIGl0IHdpdGggTFpNQSBj
b21wcmVzc2lvbiBhbmQgdUltYWdlIGluc3RlYWQgb2YgekltYWdlIGJ1dCBhbGwgd2l0aCB0aGUg
c2FtZSBvdXRjb21lLg0KPiAgDQo+IFRvIGJlIGNvbXBsZXRlLCBJIHVzZSBLZXhlYy10b29scyAy
LjAuMTkgYW5kIHpsaWIgMS4yLjExLg0KPiAgDQo+IERpZCBJIGltcGxlbWVudCBzb21ldGhpbmcg
d3Jvbmcgb3IgaG93IGNhbiBJIGRlYnVnIHRoaXMgZnVydGhlcj8NCj4gIA0KPiBLaW5kIHJlZ2Fy
ZHMsDQo+ICANCj4gTWFpa2VsIENvZW5lbg0KDQpEaWQgc29tZSBtb3JlIHRlc3RpbmcgYW5kIGFz
IGZhciBhcyBJIGNhbiBzZWUsIGl0IHRyaWVzIHRvIGRlY29tcHJlc3MgdGhlIGtlcm5lbCBiZWZv
cmUgcmVtb3ZpbmcgdGhlIGRlY29tcHJlc3Npbmcgc3R1YiBhbmQgaGVhZGVyIG9mIHRoZSB6SW1h
Z2UvdUltYWdlLiBUaGVyZWZvcmUsIGl0IGlzIG5vdCBhYmxlIHRvIGZpbmQgdGhlIG1hZ2ljIG51
bWJlcnMgb2YgYSBnemlwIGZpbGUgYXQgdGhlIGJlZ2lubmluZyBvZiB0aGUgZmlsZS4gDQoNCkZ1
bmN0aW9uIGd6X2xvb2ssIGNhbGxlZCBmcm9tIGd6ZGlyZWN0IGF0IHpsaWJfZGVjb21wcmVzc19m
aWxlLCBjaGVja3MgdGhlIGZpcnN0IGJ5dGUgb2YgdGhlIHN0cmVhbSB0byBiZSBlcXVhbCB0byAz
MSBhbmQgdGhlIHNlY29uZCBlcXVhbCB0byAxMzkuIEJlY2F1c2UgaXQgZGlkIG5vdCBzdHJpcCB0
aGUgaGVhZGVyLCB0aGUgZmlyc3QgYW5kIHNlY29uZCBieXRlIGFyZSAzOSBhbmQgNS4gVGhlc2Ug
YXJlIHRoZSBmaXJzdCBieXRlcyBvZiB0aGUgdUltYWdlLg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2tleGVjCg==
