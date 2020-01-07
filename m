Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC59B132B19
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 17:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61jlDITR92wI32kyFfd56Sds+nOzZP0sr5fMUQlHPZs=; b=VO3aa2nC67WRnj
	SSnJwGmKALlhQZPEmTV0lS0nZlvCaC0oCk848zXHIl69zkH8oL1M1Wf1ifqcQp/tn+Ed1U7TepqVV
	BivzvCMwYxx6ZI5k6Lg6a9Icens13XCrhMTcQEgRU0RuFP/z6cu5wEGGybxa62dgfyRueywnoGdcX
	N+ogUWZHlSNLnpTPS2PZa5EShbDrFx3G9wzB3yetCNwK6OpQ8hyyFGp+LqNyjz5eUIT25WV/PAZUY
	VwtXfh27NNKh3v2aUCBjUJIP/qLphNRHJ9qb1K/BlXRNQEl+nENryTvl4yff59ZDFvwTE/hg9jqCv
	edm6WfTi44RTJXC66VWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iorlK-0002XV-LB; Tue, 07 Jan 2020 16:31:22 +0000
Received: from mail-eopbgr1400049.outbound.protection.outlook.com
 ([40.107.140.49] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iorlD-0002Wu-Mf
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 16:31:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gCrereguWqtq1vBI0XuXW4xUlcCJ+zwztIcFXA1MZ5W7lZuDPpy6f52emrqKjzNhDWo7i1F8S62d/ecx2COMeSqF8J1GJsxf8WY3QclzfB3qjUmyHjJGKEY6b0IZO35Q32QaA43101zua1tm/Hc58dxzq/dgFT77KNhDpT7n6v5NeexG/wFnjET5BB3OVLRMdQZ8yNmjL998MvkvSJjAoplR8b+Cv3+fZGnYPsOgrVrRwNq0GMfKvThYkqA7lsCe01SYmybdVcb7Eh7BeVOVqjTvfcSjU6A/S1omscRDJvyrktXrcOcOMzvrfNUOeDNmPJAafMktyVFjsckVV7baLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J5mTiseZQr3A5FThD0iN2foJLha/YxaTBnSKgqYbhsM=;
 b=jXbWBbFr49Ku/fs7sc8Zv+XoRCSiqF22NRgp3XfrBUL3c+GScl7ddS0JUHdSBwfi0IQJL07rUWXg5t8abtzQp+pYw74pAbmjNDi3Ujw/DvBkiDhkazvIoRq7B/r4eK0KilURD5gxXD9Mp/rvNx4IqiUnfvxIW5b2nNpuJ6dROh2xYlhoyV+T0YwVenIRSO4p9kQ0AZUlg/arIvYcjN82WwxMISPKxBMMrqQKIhlP0yjJKvtaL6AoAVh6p2EeQRkSfRyKFaChPWd2mzC1TI6a67xcXTyS6R2IDxMiETh484AY4Pk/fDWCdKf5+Ue85YO26hYwXiMAO/ypJj4EF3SFnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J5mTiseZQr3A5FThD0iN2foJLha/YxaTBnSKgqYbhsM=;
 b=mCA6srVD53TXjNyRuN4wFsduT5zkCC40mhHg7gN/f3j/3MNT/YJGHNu4JyTULl6AKWDXo8MtvzCypI6rrlrENQecJ2+NaosYOQVElCcBWZpcXocF35Q/jyyw3QQGuo2eaNJACv8QHTQl5K+Wi6ZFWslwJr6NzbOWfEplqMU9TGo=
Received: from OSBPR01MB5207.jpnprd01.prod.outlook.com (20.179.181.86) by
 OSBPR01MB1558.jpnprd01.prod.outlook.com (52.134.225.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Tue, 7 Jan 2020 16:31:10 +0000
Received: from OSBPR01MB5207.jpnprd01.prod.outlook.com
 ([fe80::1831:869f:87ef:9ccf]) by OSBPR01MB5207.jpnprd01.prod.outlook.com
 ([fe80::1831:869f:87ef:9ccf%7]) with mapi id 15.20.2602.015; Tue, 7 Jan 2020
 16:31:10 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Zaslonko Mikhail <zaslonko@linux.ibm.com>
Subject: RE: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Topic: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Index: AQHVu539YdIeeoZhrkK9VP733OiLmafLzJ4AgAJPLKCABGEPgIAGvFLggABGiACABKTRYIABHJaAgAAxRCA=
Date: Tue, 7 Jan 2020 16:31:10 +0000
Message-ID: <OSBPR01MB5207F39755A4ADE6BD3ABBF7DD3F0@OSBPR01MB5207.jpnprd01.prod.outlook.com>
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
 <TY2PR01MB5210EC16730BC6D382D5E543DD230@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <3e5e68a2-edfe-6545-db97-277d5be36f8a@linux.ibm.com>
 <TY2PR01MB521032C755BF1FCCDA0239B9DD3C0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <cdabc393-e507-9357-b2f1-9797b0bbc153@linux.ibm.com>
In-Reply-To: <cdabc393-e507-9357-b2f1-9797b0bbc153@linux.ibm.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6befda1d-9ae5-4358-a306-08d7938f0130
x-ms-traffictypediagnostic: OSBPR01MB1558:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB1558C458C74D3EB7A5F80236DD3F0@OSBPR01MB1558.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(189003)(199004)(13464003)(71200400001)(966005)(33656002)(81156014)(81166006)(8676002)(53546011)(6506007)(26005)(8936002)(186003)(316002)(7696005)(66946007)(76116006)(86362001)(54906003)(52536014)(9686003)(66446008)(64756008)(66556008)(66476007)(85182001)(5660300002)(478600001)(4326008)(2906002)(6916009)(55016002)(317694003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB1558;
 H:OSBPR01MB5207.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W5wXUjJWK1frQWG6EfWrEMKlh9itdmUk274d7G8nNGrq9jPfpZFPNQeUi6YzXDT9xnjTWsoFjbPJwUkEwHDo+9xWDyGr/dOFANVftYTASvdT4qjGqLkQp1zlt7uyMsrgfmEQk/QGN3qn0cIXY5z0b3Xb+c9pZjUF9VhOFTrNcuBMetGHMgqkMLXpTtf2XQZaOXa8RvZxV16JtNtLfGsVhto2NvynblE0SIddTBhXRyFsPcFxpgENvmCFR7u5C0qWlUaCc7s9/hEWW4jvsylrOPRpVEBhzLF8PTvACir2oKNL27GoVjxpKppPk0FiMFm7dMOPtnve/m5vZto2wiii1B1yRfhKu7gnTzQhO6429wKb9Q2kL5NTil1aYAzcRFojaX2k8RK0/M5pMA5Yl023JDFg5oaOswKbYwFhmEEOJe7DYnOzKFq69iknmR2WUnVlk42X1ZeifPK/OUSXgBNkYu2kEPYjkjTHVilMKpKUX5t/0qsVcVqFzd54qczxBxE0QCzkGRAr4RKbLuqJTERSE9Ng6AqkAsk0t07z3vAwrD1Junv5v1IazCwpZ7adbmRx
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6befda1d-9ae5-4358-a306-08d7938f0130
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 16:31:10.5325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FBDmloQ4htgYA2mug6dj4jrqfbc5OBHyx6fh0SZsvADszXE0IrLmohbp1JBgeggLbKk/4jhkIMWzywNqFwF4LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB1558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_083115_812387_E2F661CE 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Philipp Rudo <prudo@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgTWlraGFpbCwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBIZWxsbyBLYXp1
LA0KPiANCj4gSSd2ZSByZWZyZXNoZWQgbXkgcGF0Y2ggb24gdG9wIG9mICdvcmlnaW4vYWRkLWdl
dF9rYXNscl9vZmZzZXRfZ2VuZXJhbCcuIFBsZWFzZSBmaW5kIGl0IGF0dGFjaGVkIGJlbG93Lg0K
PiBIb3BlIHRoZXJlIGlzIHN0aWxsIGEgY2hhbmNlIHRvIGluY2x1ZGUgaXQgaW50byB0aGUgcmVs
ZWFzZS4NCg0KVGhhbmsgeW91LiBZb3VyIHBhdGNoIGlzIHF1ZXVlZCBmb3IgbWFrZWR1bXBmaWxl
IHYxLjYuNy4NCg0KS2F6dQ0KDQo+IA0KPiBUaGFua3MsDQo+IE1pa2hhaWwgWmFzbG9ua28NCj4g
DQo+IA0KPiBPbiAwNi4wMS4yMDIwIDIyOjQyLCBIQUdJTyBLQVpVSElUTyjokKnlsL4g5LiA5LuB
KSB3cm90ZToNCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBIaSBL
YXp1LA0KPiA+Pg0KPiA+PiBTb3JyeSwgSSBkaWQndCBoYXZlIGEgY2hhbmNlIHRvIHRyeSB5b3Vy
IHBhdGNoIHlldC4NCj4gPj4gSSB3aWxsIHVwZGF0ZSBtaW5lIG5leHQgd2Vlay4NCj4gPg0KPiA+
IE9LLg0KPiA+IEZZSSwgSSdtIHBsYW5uaW5nIHRvIHJlbGFzZSB0aGUgbmV4dCB2ZXJzaW9uIG9m
IG1ha2VkdW1wZmlsZSBieSB0aGUgZW5kDQo+ID4gb2YgbmV4dCB3ZWVrLiAgSXQgbmVlZHMgc29t
ZSByZWdyZXNzaW9uIHRlc3Rpbmcgd2l0aCBvbGQgdm1jb3JlcywgZXRjLiwgc28NCj4gPiBJIGNh
biBpbmNsdWRlIHBhdGNoZXMgbWVyZ2VkIGJ5IHRoZSBiZWdpbm5pbmcgb2YgbmV4dCB3ZWVrIGlu
IHRoZSByZWxlYXNlLg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IEthenUNCj4gPg0KPiA+Pg0KPiA+
PiBUaGFua3MsDQo+ID4+IE1pa2hhaWwNCj4gPj4NCj4gPj4NCj4gPj4gT24gMDMuMDEuMjAyMCAy
MTo1NSwgSEFHSU8gS0FaVUhJVE8o6JCp5bC+IOS4gOS7gSkgd3JvdGU6DQo+ID4+PiBIaSBMaWFu
Ym8sIE1pa2hhaWwsDQo+ID4+Pg0KPiA+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4+Pj4+Pg0KPiA+Pj4+Pj4gSW4gYWRkaXRpb24sIHRoZSBhYm92ZSBjb2RlIGNvbmZ1c2VkIG1l
LCBpdCB3aWxsIGFsd2F5cyByZXR1cm4gMCBvbiBzMzkwKHBsZWFzZSByZWZlciB0byBteSBsb2dz
KS4NCj4gPj4+Pj4NCj4gPj4+Pj4gVGhlIGFpbSBvZiBnZXRfa2FzbHJfb2Zmc2V0KCkgaGVyZSBp
cyBvbmx5IHNldHRpbmcgaW5mby0+a2FzbHJfb2Zmc2V0IHRvIHRoZSB2YWx1ZQ0KPiA+Pj4+PiBm
cm9tIHZtY29yZWluZm8gZm9yIHRoZSBTWU1CT0xfSU5JVCgpIG1hY3JvLg0KPiA+Pj4+PiAoZ2V0
X2thc2xyX29mZnNldCgpIHJldHVybnMgdGhlIGthc2xyIG9mZnNldCBpbiB0aGUgcmVzb2x2ZV9j
b25maWdfZW50cnkoKS4pDQo+ID4+Pj4+DQo+ID4+Pj4gVGhhbmtzIGZvciB5b3VyIGV4cGxhbmF0
aW9uLCBLYXp1Lg0KPiA+Pj4+DQo+ID4+Pj4+IEJ1dCB5ZWFoLCB0aGUgZ2V0X2thc2xyX29mZnNl
dChTWU1CT0woX3N0ZXh0KSkgaXMgY29uZnVzaW5nIGFuZCBub3QgZ29vZC4NCj4gPj4+Pj4gUGFz
c2luZyAwIG1pZ2h0IGJlIGEgYml0IGJldHRlci4uPw0KPiA+Pj4+Pg0KPiA+Pj4+IFllcywgbG9v
a3MgZ29vZCB0byBtZS4NCj4gPj4+DQo+ID4+PiBPSywgSSBwdXNoZWQgYW4gYWRkaXRpb25hbCBw
YXRjaCBmaXhpbmcgaXQgdG8gdGhlIHRlc3QgYnJhbmNoOg0KPiA+Pj4gaHR0cHM6Ly9naXRodWIu
Y29tL2staGFnaW8vbWFrZWR1bXBmaWxlL3RyZWUvYWRkLWdldF9rYXNscl9vZmZzZXRfZ2VuZXJh
bA0KPiA+Pj4gVGhhbmtzIExpYW5ibyBmb3IgcG9pbnRpbmcgaXQgb3V0Lg0KPiA+Pj4NCj4gPj4+
IE1pa2hhaWwsIGlmIHlvdSB1cGRhdGUgeW91ciBwYXRjaCBvbiB0b3Agb2YgdGhlIHRyZWUgYWJv
dmUsDQo+ID4+PiBJJ2xsIG1lcmdlIGl0IHVwc3RyZWFtLg0KPiA+Pj4NCj4gPj4+IFRoYW5rcywN
Cj4gPj4+IEthenUNCj4gPj4+DQo+ID4+PiBQLlMuIE15IGVtYWlsIGFkZHJlc3MgaGFzIGJlZW4g
Y2hhbmdlZCB0byBrLWhhZ2lvLWFiQG5lYy5jb20uDQo+ID4+PiBQbGVhc2Ugc2VuZCBlbWFpbCB0
byB0aGlzIGFkZHJlc3MgaW4gdGhlIGZ1dHVyZS4gVGhhbmtzLg0KPiA+Pj4gKFVnaCwgaXQgc2Vl
bXMgSSBjYW5ub3QgcmVtb3ZlIG15IGthbmppIG5hbWUgaW4gdGhlIEZyb206IGZpZWxkLi4pDQo+
ID4+Pg0KPiA+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
