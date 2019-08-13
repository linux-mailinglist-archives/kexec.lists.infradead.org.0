Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8B08BA34
	for <lists+kexec@lfdr.de>; Tue, 13 Aug 2019 15:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNBr+AFUhbwrUoz0ajQwdzCySGTzkfWtafXwn9BPzhc=; b=Hi+q2Y54nrYPnU
	wra8KaG/UXd1/f20g3N79HONrybRw6a5TZ4Yn8fD8mx6XX8kBlGsgQOrW7oxtcLHRzGRdie9FC6rz
	Gwnt2jQRPR8q2kTPXWlLtE/Cufv/kXYfSkMXIJaHn/GmwQzBqo+t6KDKaQ5cqvSh5NUQ9zkIB/T0C
	SuiPlOvdcR4gMc9BXqD8XYPW1VXFRvYI5fOCzyFXt20cy4gTm7QavDgCdz5WQsESNy9ErkKafqHF9
	9x5y3iNkmZ/t0+eP6f6WBmJtIsCI3jY0hknGVZ20NqzeiB36ITKyCwysEd5nM4P28G1lQN3QQ5/uT
	WuHibM/h42IEA6ovU/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWtQ-00045a-TG; Tue, 13 Aug 2019 13:31:17 +0000
Received: from mail-eopbgr00115.outbound.protection.outlook.com
 ([40.107.0.115] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWtH-0003x2-Fx
 for kexec@lists.infradead.org; Tue, 13 Aug 2019 13:31:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QhO/PK9jx4kvDDNYQWqAASujYDO5Ac950DKcdhGmAOa2HWKOXZWBlqOW27nkDlr4eUvGKE64DHR706uiCPfOzUzSvcaGyM3mO6jBDTo9xjbZKuWw5fo9npLhjDTtLc6+uYZZFT56glrwkHZb+dfWW1Jd/QbqpDoZmwhI5NFVFoC+DBBqLFpEovkyjMQnu3g56rSYHdrE6rruQcYLTzkY4h5YJJQQRkGwoIa/QUEyDbiQEeV+uMBxEgCqbyHMIO2BLixGQH4pyGhT5R4wr/ozph7LvktPI1RiXA+H9gzoQDc/djZK72zYFggucy2bPAFsuDvJTBNws/NiXHGKlv0Hug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iaPMdoZ7jmOluG29xv5WvkhJKu9wmOw6kRoEMFrsFQA=;
 b=b/IFfIxmu3SVc6RdmnemXnB4/DtGIwl/TvB9JI5Hiew5I6o73KT86d87Vx5B6UKKM1XIOUyp/06AJ9dtaeYmgUlSmeAGgHVc7DVTcUcMmdL0ZQ4LQdfrlYfZ4Xttr2/+KYSoLBpMM3jhoyoTn34Khm0qVJk0+zIdnjsIrTIdFRr5EmJiZtAeesftgEHWhcFLQ73IEAG/9NX9fofxQJvcUgI/MKrk/NK3Ks83evuLN6PTRNaDceyfBwdk2nqyVGzNMvJbn9hY2pc/Cz26sNnGjlk244Eldseut8KBvq71IDh9c0c9A0X2Us0c77QHI9KxqdXn27cnim4Dc7NLOezyAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nedap.com; dmarc=pass action=none header.from=nedap.com;
 dkim=pass header.d=nedap.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nedap.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iaPMdoZ7jmOluG29xv5WvkhJKu9wmOw6kRoEMFrsFQA=;
 b=xNFKmjQxW3MBOnosWQ9xjUGojAusqZ6jA8pKKliPwUrrT+0GfApCWIsJ2mZeSFWbVnK73U65hNn8TxFLMweupzXDj7trLbWanfV77hJsTFc6d29u2uaoYjl1Ik6UFRtyvEfeAbScEJV1mDyc18fZLkKIUmPPcg985/wF79a6daE=
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM (20.178.205.17) by
 VI1PR10MB1840.EURPRD10.PROD.OUTLOOK.COM (10.165.195.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Tue, 13 Aug 2019 13:31:00 +0000
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd]) by VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd%6]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 13:31:00 +0000
From: Maikel Coenen <maikel.coenen@nedap.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: No compression technique of zImage/uImage detected - ARM
Thread-Topic: No compression technique of zImage/uImage detected - ARM
Thread-Index: AQHVQf97ymOykNqYQ0u4hEk/a9nQIqbZnbAAgAdz1wCAAFT3AIADTOgAgAMWU4CAEYp/AA==
Date: Tue, 13 Aug 2019 13:31:00 +0000
Message-ID: <CBEB28C3-F683-4EA4-885B-1C617790ABB2@nedap.com>
References: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
 <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
 <5088a9d0-5638-1c41-1968-fc973e773e52@redhat.com>
 <6AB2A445-6C9D-451A-8CEB-5F5AC8A15545@nedap.com>
 <CACi5LpNKRCqnQz4WDEe6t0LPbELeepALnrgqcDEdf0GeSD8fcA@mail.gmail.com>
 <CEF7C3A8-39E8-411E-B716-972451684B02@nedap.com>
In-Reply-To: <CEF7C3A8-39E8-411E-B716-972451684B02@nedap.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maikel.coenen@nedap.com; 
x-originating-ip: [213.160.213.92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05df1bd3-a3f8-4a67-8c1c-08d71ff27b56
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR10MB1840; 
x-ms-traffictypediagnostic: VI1PR10MB1840:
x-microsoft-antispam-prvs: <VI1PR10MB1840D30C89B8398D7FFD83CBEED20@VI1PR10MB1840.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39850400004)(136003)(366004)(396003)(199004)(189003)(53936002)(33656002)(54906003)(99286004)(256004)(478600001)(14444005)(316002)(71190400001)(81166006)(8676002)(81156014)(5660300002)(305945005)(71200400001)(4326008)(6512007)(6486002)(186003)(64756008)(36756003)(66556008)(76176011)(486006)(26005)(25786009)(66446008)(14454004)(2906002)(66476007)(6506007)(53546011)(66946007)(102836004)(44832011)(76116006)(91956017)(446003)(66066001)(86362001)(3846002)(2616005)(6436002)(11346002)(6916009)(476003)(6116002)(7736002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1840;
 H:VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nedap.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IZxLFCitZg/DOC/pMS+uQL5X69NdCQ6TB5Y9U8ljUScI1wyTnUz9LrAv/GE/nCxwAtrJGuR1sFQI7GbN7hBiRMzC89obS4oZw5zVD5cs2p13MjNetrKxC5lLEnA7kzaocZjVlLfYjDi1zupp+Osbh/MDYztQXaJKFe1jZiPATmNnlC6XbB0Mfh8Jb+yHJDQpJoyJTnqz1Deb0BVDGXK0l8D6ZtnUL7T+gXhUYH0k5wfg+y85HuSUwz4cFbQPuE0hDvMj6FSJX5BtOcAunyu6OluJ2vuCZ8dDgEpDlDO0ljSI5DwnRmMZia5zE79EFYsCRfOxAyV7pxgX0JpZysa7LzytGUKQbVgwvNK3/XI22F/wlER3usCDs2R6Qyckdlu6XXhLDHUUF5pkKreRq8u6d52xbMOIvirX37TvLyOSKck=
x-ms-exchange-transport-forked: True
Content-ID: <5CE5456074C7A348A56CBD05AD93C0F3@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: nedap.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05df1bd3-a3f8-4a67-8c1c-08d71ff27b56
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 13:31:00.6171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d21d161-0ae7-4a24-94cf-df0881e2fa96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CtUofhsBlKeh9YJBRZzP/kK4kJwj8kgOnu+++Z7QujB6kM5nDVa3/tFfMeLDTTa5Ng3t//BYrPzF4eEP5kMrsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1840
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_063107_775038_61CB8FF0 
X-CRM114-Status: GOOD (  28.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

PjAyLzA4LzIwMTksIDExOjM5LCAia2V4ZWMgb24gYmVoYWxmIG9mIE1haWtlbCBDb2VuZW4iIDxr
ZXhlYy1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmcgb24gYmVoYWxmIG9mIG1haWtlbC5jb2Vu
ZW5AbmVkYXAuY29tPiB3cm90ZTo+ID4zMS8wNy8yMDE5LCAxNDozMCwgIkJodXBlc2ggU2hhcm1h
IiA8YmhzaGFybWFAcmVkaGF0LmNvbT4gd3JvdGU6PiBPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAx
OjM2IFBNIE1haWtlbCBDb2VuZW4gPG1haWtlbC5jb2VuZW5AbmVkYXAuY29tPiB3cm90ZToNCj4g
PiA+DQo+ID4gPiA+IE9uIDI5LzA3LzIwMTksIDA3OjAyLCAiQmh1cGVzaCBTaGFybWEiIDxiaHNo
YXJtYUByZWRoYXQuY29tPiB3cm90ZTo+DQo+ID4gPg0KPiA+ID4gPiAgICAgSGkgTWFpa2VsLA0K
PiA+ID4gPg0KPiA+ID4gPiAgICAgSSBoYXZlIGEgY291cGxlIG9mIHF1ZXJpZXMgKHNvIHRoYXQg
SSBjYW4gaGVscCB5b3UgYmV0dGVyKS4gUGxlYXNlIHNlZQ0KPiA+ID4gPiAgICAgdGhlbSBpbi1s
aW5lOg0KPiA+ID4gPg0KPiA+ID4gPiAgICAgT24gMDcvMjQvMjAxOSAwMjo0MyBQTSwgTWFpa2Vs
IENvZW5lbiB3cm90ZToNCj4gPiA+ID4gICAgID4gSGksDQo+ID4gPiA+ICAgICA+DQo+ID4gPiA+
ICAgICA+IEkgaGF2ZSBtZXQgYW4gaXNzdWUgZHVyaW5nIGxvYWRpbmcgYSBuZXcga2VybmVsIHdp
dGggS2V4ZWMgb24gYW4gQVJNdjUgU29DLiBUaGUga2VybmVsIGlzIGEgNC4xOSB3aXRoIEd6aXAg
Y29tcHJlc3Npb24gYnV0IGR1cmluZyBsb2FkaW5nIEtleGVjIGRvZXMgbm90IHJlY29nbml6ZSB0
aGUgY29tcHJlc3Npb24uDQo+ID4gPiA+ICAgICA+DQo+ID4gPiA+ICAgICA+IElmIEkgbG9hZCB0
aGUgbmV3IGtlcm5lbCBhbmQgZHRiIHdpdGg6DQo+ID4gPiA+ICAgICA+DQo+ID4gPiA+ICAgICA+
IGtleGVjIC1sIC9ib290L3pJbWFnZSAtZCAtLWR0Yj0vYm9vdC91LWJvb3QuZHRiDQo+ID4gPiA+
DQo+ID4gPiA+ICAgICBDYW4geW91IHBsZWFzZSBzaG93IHRoZSBvdXRwdXQgb2YgdGhlIGZvbGxv
d2luZyBjb21tYW5kOg0KPiA+ID4gPiAgICAgJCBmaWxlIC9ib290L3pJbWFnZQ0KPiA+ID4NCj4g
PiA+IHpJbWFnZTogTGludXgga2VybmVsIEFSTSBib290IGV4ZWN1dGFibGUgekltYWdlIChsaXR0
bGUtZW5kaWFuKQ0KPiA+ID4NCj4gPiA+IEkgYWxzbyBwZXJmb3JtZWQgYSBiaW53YWxrIHdpdGgg
Zm9sbG93aW5nIG91dHB1dDoNCj4gPiA+IERFQ0lNQUwgICAgICAgICBIRVhBREVDSU1BTCAgICAg
REVTQ1JJUFRJT04NCj4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gPiAwICAgICAg
ICAgICAgICAgMHgwICAgICAgICAgICAgIExpbnV4IGtlcm5lbCBBUk0gYm9vdCBleGVjdXRhYmxl
IHpJbWFnZSAobGl0dGxlLWVuZGlhbikNCj4gPiA+IDE2NDI0ICAgICAgICAgICAweDQwMjggICAg
ICAgICAgZ3ppcCBjb21wcmVzc2VkIGRhdGEsIG1heGltdW0gY29tcHJlc3Npb24sIGZyb20gVW5p
eCwgbGFzdCBtb2RpZmllZDogMTk3MC0wMS0wMSAwMDowMDowMCAobnVsbCBkYXRlKQ0KPiA+ID4N
Cj4gPiA+ID4gICAgIEFsc28gY2FuIHlvdSBwbGVhc2UgbWFrZSBzdXJlIHRoYXQgdGhlIHpJbWFn
ZSBoYXMgdGhlIHJpZ2h0IGd6aXAgaGVhZGVyDQo+ID4gPiA+ICAgICA6IG1hZ2ljIGhlYWRlciAg
MHgxZiwgMHg4YiAoXDAzNyBcMjEzKQ0KPiA+ID4NCj4gPiA+IEFzIHlvdSBjYW4gc2VlIGluIHRo
ZSBiaW53YWxrIG91dHB1dCwgaXMgdGhlIG1hZ2ljIGhlYWRlciBmb3VuZCBhdCAweDQwMjguIFRo
aXMgYmVjYXVzZSBvZiB0aGUgekltYWdlIGhlYWRlci4NCj4gPiA+IFdoZW4gSSBjaGVjayB0aGUg
ekltYWdlIG1hbnVhbGx5LCBpdCBpcyBpbmRlZWQgYXQgdGhhdCBsb2NhdGlvbi4NCj4gPiA+DQo+
ID4gPiA+ICAgICA+IFRoZSBvdXRwdXQgaXM6DQo+ID4gPiA+ICAgICA+DQo+ID4gPiA+ICAgICA+
IFRyeSBnemlwIGRlY29tcHJlc3Npb24uDQo+ID4gPiA+ICAgICA+IFRyeSBMWk1BIGRlY29tcHJl
c3Npb24uDQo+ID4gPiA+ICAgICA+IGx6bWFfZGVjb21wcmVzc19maWxlOiByZWFkIG9uIC9ib290
L3pJbWFnZSBvZiA2NTUzNiBieXRlcyBmYWlsZWQNCj4gPiA+ID4gICAgID4ga2VybmVsOiAweGI2
YTY4MDA4IGtlcm5lbF9zaXplOiAweDQ5NGQzMA0KPiA+ID4gPiAgICAgPiBNRU1PUlkgUkFOR0VT
DQo+ID4gPiA+ICAgICA+IDAwMDAwMDAwMDAwMDAwMDAtMDAwMDAwMDAwZmZmZmZmZiAoMCkNCj4g
PiA+ID4gICAgID4gekltYWdlIGhlYWRlcjogMHgwMTZmMjgxOCAweDAwMDAwMDAwIDB4MDA0OTRk
MzANCj4gPiA+ID4gICAgID4gekltYWdlIHNpemUgMHg0OTRkMzAsIGZpbGUgc2l6ZSAweDQ5NGQz
MA0KPiA+ID4gPiAgICAgPiBrZXhlY19sb2FkOiBlbnRyeSA9IDB4ODAwMCBmbGFncyA9IDB4Mjgw
MDAwDQo+ID4gPiA+ICAgICA+IG5yX3NlZ21lbnRzID0gMg0KPiA+ID4gPiAgICAgPiBzZWdtZW50
WzBdLmJ1ZiAgID0gMHhiNmE2ODAwOA0KPiA+ID4gPiAgICAgPiBzZWdtZW50WzBdLmJ1ZnN6ID0g
MHg0OTRkMzANCj4gPiA+ID4gICAgID4gc2VnbWVudFswXS5tZW0gICA9IDB4ODAwMA0KPiA+ID4g
PiAgICAgPiBzZWdtZW50WzBdLm1lbXN6ID0gMHg0OTUwMDANCj4gPiA+ID4gICAgID4gc2VnbWVu
dFsxXS5idWYgICA9IDB4MWZjZjA2MA0KPiA+ID4gPiAgICAgPiBzZWdtZW50WzFdLmJ1ZnN6ID0g
MHgyNDViDQo+ID4gPiA+ICAgICA+IHNlZ21lbnRbMV0ubWVtICAgPSAweDE2ZjIwMDANCj4gPiA+
ID4gICAgID4gc2VnbWVudFsxXS5tZW1zeiA9IDB4MzAwMA0KPiA+ID4gPiAgICAgPg0KPiA+ID4g
PiAgICAgPiBMb29raW5nIGF0IHRoZSBkZWJ1ZywgdGhlIGZ1bmN0aW9uIGd6ZGlyZWN0IHJldHVy
bnMg4oCcMeKAnSB3aGljaCBpbmRpY2F0ZXMgdGhlIGtlcm5lbCBjb21wcmVzc2lvbiBpcyBub3Qg
b2YgZ3ppcCBidXQgSSBkZWZpbml0ZWx5IHVzZSBnemlwLg0KPiA+ID4gPiAgICAgPiBJIGFsc28g
dGVzdGVkIGl0IHdpdGggTFpNQSBjb21wcmVzc2lvbiBhbmQgdUltYWdlIGluc3RlYWQgb2Ygeklt
YWdlIGJ1dCBhbGwgd2l0aCB0aGUgc2FtZSBvdXRjb21lLg0KPiA+ID4gPiAgICAgPg0KPiA+ID4g
PiAgICAgPiBUbyBiZSBjb21wbGV0ZSwgSSB1c2UgS2V4ZWMtdG9vbHMgMi4wLjE5IGFuZCB6bGli
IDEuMi4xMS4NCj4gPiA+ID4gICAgID4NCj4gPiA+ID4gICAgID4gRGlkIEkgaW1wbGVtZW50IHNv
bWV0aGluZyB3cm9uZyBvciBob3cgY2FuIEkgZGVidWcgdGhpcyBmdXJ0aGVyPw0KPiA+ID4gPg0K
PiA+ID4gPiAgICAgSSBkb24ndCBoYXZlIGEgYXJtdjUgaGFyZHdhcmUgYW5kIG15IGF0dGVtcHQg
dG8gc2V0dXAgYSBxZW11ICsgYnVpbGRyb290DQo+ID4gPiA+ICAgICBzZXR1cCBmb3IgQVJNdjUg
KDkyNnQpIGxlYWQgdG8gYSBmYWlsdXJlIHRvIGJvb3QgdGhlIGxhdGVzdCB1cHN0cmVhbSBrZXJu
ZWwuDQo+ID4gPiA+DQo+ID4gPiA+ICAgICBJIHdpbGwgdHJ5IHRvIGZpeCB1cCB0aGUgc2V0dXAg
YW5kIGNvbWUgYmFjayB3aXRoIG1vcmUgZGV0YWlscy4NCj4gPiA+ID4gICAgIEluIHRoZSBtZWFu
d2hpbGUgaWYgeW91IGNhbiBzaGFyZSB0aGUgYWJvdmUsIEkgY2FuIGhhdmUgZnVydGhlciBsb29r
IGF0DQo+ID4gPiA+ICAgICB0aGUgc2FtZS4NCj4gPiANCj4gPiBXZWxsLCBJIGNhbid0IHJlcHJv
ZHVjZSB0aGUgaXNzdWUgeW91IHJlcG9ydGVkIGF0IG15IGVuZC4NCj4gPiBIZXJlIGlzIG15IGVu
dmlyb25tZW50Og0KPiA+IA0KPiA+ICQgcWVtdS1zeXN0ZW0tYXJtIC0tdmVyc2lvbg0KPiA+IFFF
TVUgZW11bGF0b3IgdmVyc2lvbiAyLjExLjIocWVtdS0yLjExLjItNS5mYzI4KQ0KPiA+IENvcHly
aWdodCAoYykgMjAwMy0yMDE3IEZhYnJpY2UgQmVsbGFyZCBhbmQgdGhlIFFFTVUgUHJvamVjdCBk
ZXZlbG9wZXJzDQo+ID4gDQo+ID4gIyB1bmFtZSAtcm4NCj4gPiBidWlsZHJvb3QgNC4xOS4xNg0K
PiA+IA0KPiA+ICMga2V4ZWMgLXYNCj4gPiBrZXhlYy10b29scyAyLjAuMTgNCj4gPiANCj4gPiAj
IGtleGVjIC1sIHpJbWFnZSAtZCAtLWR0Yj12ZXJzYXRpbGUtcGIuZHRiDQo+ID4gVHJ5IGd6aXAg
ZGVjb21wcmVzc2lvbi4NCj4gPiBrZXJuZWw6IDB4YjZjNDYwMDgga2VybmVsX3NpemU6IDB4Mjlj
YjQ4DQo+ID4gTUVNT1JZIFJBTkdFUw0KPiA+IDAwMDAwMDAwMDAwMDAwMDAtMDAwMDAwMDAwN2Zm
ZmZmZiAoMCkNCj4gPiB6SW1hZ2UgaGVhZGVyOiAweDAxNmYyODE4IDB4MDAwMDAwMDAgMHgwMDI5
Y2I0OA0KPiA+IHpJbWFnZSBzaXplIDB4MjljYjQ4LCBmaWxlIHNpemUgMHgyOWNiNDgNCj4gPiB6
SW1hZ2UgcmVxdWlyZXMgMHgwMDJhZGI0OCBieXRlcw0KPiA+ICAgb2Zmc2V0IDB4MDAwMDM5MzQg
dGFnIDB4NWE1MzRjNGIgc2l6ZSA4DQo+ID4gRGVjb21wcmVzc2VkIGtlcm5lbCBzaXplczoNCj4g
PiAgdGV4dCtkYXRhIDB4MDA1MGZlMzAgYnNzIDB4MDAwMzFkZTQgdG90YWwgMHgwMDU0MWMxNA0K
PiA+IFJlc3VsdGluZyBrZXJuZWwgc3BhY2U6IDB4MDA3YmQ5NzgNCj4gPiBLZXJuZWw6IGFkZHJl
c3M9MHgwMDAwODAwMCBzaXplPTB4MDA3YmQ5NzgNCj4gPiBEVCAgICA6IGFkZHJlc3M9MHgwMDdj
NzAwMCBzaXplPTB4MDAwMDIyNzgNCj4gPiBrZXhlY19sb2FkOiBlbnRyeSA9IDB4ODAwMCBmbGFn
cyA9IDB4MjgwMDAwDQo+ID4gbnJfc2VnbWVudHMgPSAyDQo+ID4gc2VnbWVudFswXS5idWYgICA9
IDB4YjZjNDYwMDgNCj4gPiBzZWdtZW50WzBdLmJ1ZnN6ID0gMHgyOWNiNGMNCj4gPiBzZWdtZW50
WzBdLm1lbSAgID0gMHg4MDAwDQo+ID4gc2VnbWVudFswXS5tZW1zeiA9IDB4MjlkMDAwDQo+ID4g
c2VnbWVudFsxXS5idWYgICA9IDB4NDdjYTgNCj4gPiBzZWdtZW50WzFdLmJ1ZnN6ID0gMHgyMjc4
DQo+ID4gc2VnbWVudFsxXS5tZW0gICA9IDB4N2M3MDAwDQo+ID4gc2VnbWVudFsxXS5tZW1zeiA9
IDB4MzAwMA0KPiA+IA0KPiA+IEFzIHlvdSBjYW4gc2VlIGZyb20gdGhlIGxvZ3MgYWJvdmUgdGhl
IHpJbWFnZSBmb3JtYXQgaXMgY29ycmVjdGx5DQo+ID4gcmVjb2duaXplZCBhbmQgZGVjb21wcmVz
c2VkLg0KPiA+IA0KPiA+IFdoZW4gSSBydW4gJ2tleGVjIC1lJywgSSBjYW4gbGF1bmNoIHRoZSBu
ZXcga2VybmVsIGp1c3QgZmluZS4NCj4gPiANCj4gPiBJIGRvbid0IHNlZSBhbnkgbmV3IHBhdGNo
ZXMgaW4gJ2tleGVjL2FyY2gvYXJtJyBmb2xkZXIgYmV0d2Vlbg0KPiA+IGtleGVjLXRvb2xzIDIu
MC4xOCAoYXQgbXkgZW5kKSBhbmQga2V4ZWMtdG9vbHMgMi4wLjE5ICh3aGljaCB5b3UgdXNlKSwN
Cj4gPiBzbyBJIGFtIG9mIHRoZSB2aWV3IHRoYXQgdGhlIGlzc3VlIGlzIG9mIHRoZSB6SW1hZ2Ug
aW1hZ2UgZ2VuZXJhdGlvbg0KPiA+IHByb2JhYmx5Lg0KPiA+IA0KPiA+IFNpbmNlLCAna2V4ZWMv
YXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jJyBhbHNvIHN1cHBvcnRzIHVuY29tcHJlc3NlZA0K
PiA+IGtlcm5lbCBJbWFnZSwgeW91IGNhbiB0cnkgbG9hZGluZyB0aGUgSW1hZ2UgZmlsZSBkaXJl
Y3RseSBhbmQgc2VlIGlmDQo+ID4gdGhhdCBtYWtlcyBhIGRpZmZlcmVuY2UgKHlvdSBjYW4gZmlu
ZCBpdCBoZXJlIGluIHRoZSBrZXJuZWwgdHJlZToNCj4gPiBhcmNoL2FybS9ib290L0ltYWdlKToN
Cj4gPiANCj4gPiAjIGtleGVjIC1sIEltYWdlIC1kIC0tZHRiPXZlcnNhdGlsZS1wYi5kdGINCj4g
PiBUcnkgZ3ppcCBkZWNvbXByZXNzaW9uLg0KPiA+IGtlcm5lbDogMHhiNWYzYTAwOCBrZXJuZWxf
c2l6ZTogMHhmYzRmMjANCj4gPiBNRU1PUlkgUkFOR0VTDQo+ID4gMDAwMDAwMDAwMDAwMDAwMC0w
MDAwMDAwMDA3ZmZmZmZmICgwKQ0KPiA+IHpJbWFnZSBoZWFkZXI6IDB4ZWIwMDAwNWEgMHhlYjAw
MDA0NCAweGViMDAwMDA5DQo+ID4gekltYWdlIHJlcXVpcmVzIDB4MDBmZDVmMjAgYnl0ZXMNCj4g
PiBLZXJuZWw6IGFkZHJlc3M9MHgwMDAwODAwMCBzaXplPTB4MDRmMmRiYTANCj4gPiBEVCAgICA6
IGFkZHJlc3M9MHgwNGYzNzAwMCBzaXplPTB4MDAwMDIyNzgNCj4gPiBrZXhlY19sb2FkOiBlbnRy
eSA9IDB4ODAwMCBmbGFncyA9IDB4MjgwMDAwDQo+ID4gbnJfc2VnbWVudHMgPSAyDQo+ID4gc2Vn
bWVudFswXS5idWYgICA9IDB4YjVmM2EwMDgNCj4gPiBzZWdtZW50WzBdLmJ1ZnN6ID0gMHhmYzRm
MjQNCj4gPiBzZWdtZW50WzBdLm1lbSAgID0gMHg4MDAwDQo+ID4gc2VnbWVudFswXS5tZW1zeiA9
IDB4ZmM1MDAwDQo+ID4gc2VnbWVudFsxXS5idWYgICA9IDB4NDdjYTgNCj4gPiBzZWdtZW50WzFd
LmJ1ZnN6ID0gMHgyMjc4DQo+ID4gc2VnbWVudFsxXS5tZW0gICA9IDB4NGYzNzAwMA0KPiA+IHNl
Z21lbnRbMV0ubWVtc3ogPSAweDMwMDANCj4gPiANCj4gPiBUaGFua3MsDQo+ID4gQmh1cGVzaA0K
PiANCj4gSSBwcmV2aW91c2x5IGJ1aWxkIG15IGtlcm5lbCB3aXRoaW4gdGhlIFlvY3RvIGVudmly
b25tZW50IGJ1dCBub3cgZGlkIGl0IG1hbnVhbGx5IChUb3J2YWxkcyBnaXQgNC4xOSkgd2l0aCB0
aGUgc2FtZSByZXN1bHQuIEFsc28gY2hlY2tlZCBteSBrZXJuZWwgY29uZmlndXJhdGlvbiB3aXRo
b3V0IHBvc2l0aXZlIHJlc3VsdHMuIA0KPiBJIGNhbiBzdWNjZXNzZnVsbHkgYm9vdCB0aGlzIGtl
cm5lbCBmcm9tIHUtYm9vdC4NCj4gDQo+IEFsc28gdGhlIHVuY29tcHJlc3NlZCBJbWFnZSBmaWxl
IGdpdmVzIHRoZSBmb2xsb3dpbmcgcmVzdWx0Og0KPiANCj4gIyBrZXhlYyAtbCAvYm9vdC9JbWFn
ZSAtZCAtLWR0Yj0vYm9vdC91LWJvb3QuZHRiDQo+IFRyeSBnemlwIGRlY29tcHJlc3Npb24uDQo+
IFRyeSBMWk1BIGRlY29tcHJlc3Npb24uDQo+IGx6bWFfZGVjb21wcmVzc19maWxlOiByZWFkIG9u
IC9ib290L0ltYWdlIG9mIC0xMDkzMDM1NjMyIGJ5dGVzIGZhaWxlZA0KPiBrZXJuZWw6IDB4YjY2
NTgwMDgga2VybmVsX3NpemU6IDB4NzAwZjhjDQo+IE1FTU9SWSBSQU5HRVMNCj4gMDAwMDAwMDAw
MDAwMDAwMC0wMDAwMDAwMDBmZmZmZmZmICgwKQ0KPiB6SW1hZ2UgaGVhZGVyOiAweGViMDAwMDVh
IDB4ZWIwMDAwNDQgMHhlYjAwMDAwOQ0KPiB6SW1hZ2UgcmVxdWlyZXMgMHgwMDcxMWY4YyBieXRl
cw0KPiBLZXJuZWw6IGFkZHJlc3M9MHgwMDAwODAwMCBzaXplPTB4MDIzNTlkYmMNCj4gRFQgICAg
OiBhZGRyZXNzPTB4MDIzNjMwMDAgc2l6ZT0weDAwMDAyNDViDQo+IGtleGVjX2xvYWQ6IGVudHJ5
ID0gMHg4MDAwIGZsYWdzID0gMHgyODAwMDANCj4gbnJfc2VnbWVudHMgPSAyDQo+IHNlZ21lbnRb
MF0uYnVmICAgPSAweGI2NjU4MDA4DQo+IHNlZ21lbnRbMF0uYnVmc3ogPSAweDcwMGY5MA0KPiBz
ZWdtZW50WzBdLm1lbSAgID0gMHg4MDAwDQo+IHNlZ21lbnRbMF0ubWVtc3ogPSAweDcwMTAwMA0K
PiBzZWdtZW50WzFdLmJ1ZiAgID0gMHg1MTUwNTgNCj4gc2VnbWVudFsxXS5idWZzeiA9IDB4MjQ1
Yg0KPiBzZWdtZW50WzFdLm1lbSAgID0gMHgyMzYzMDAwDQo+IHNlZ21lbnRbMV0ubWVtc3ogPSAw
eDMwMDANCj4gDQo+IEFyZSB0aGVyZSBzcGVjaWFsIGtlcm5lbCBjb25maWd1cmF0aW9uIG9wdGlv
bnMgSSBoYXZlIHRvIGVuYWJsZS9kaXNhYmxlIHdoaWNoIGluZmx1ZW5jZXMgdGhlIHpJbWFnZSBo
ZWFkZXI/DQoNClRyaWVkIHRvIHJlcHJvZHVjZSBteSBwcm9ibGVtcyB3aXRoIGJ1aWxkcm9vdCwg
YXMgeW91IGRpZC4gTm9ybWFsbHksIGJ1aWxkcm9vdCBkb2VzIG5vdCBlbmFibGUgbHptYSBsaWJy
YXJpZXMgYW5kIHRoZXJlZm9yZSB0aGVzZSBvdXRwdXRzIGFyZSBub3Qgc2hvd24uIFdoZW4gSSBl
bmFibGUgaXQsIHRoZSBvdXRwdXQgaXMgc2ltaWxhciBhcyBzaG93biBhYm92ZS4gDQoNCiMgdW5h
bWUgLWENCiMgYnVpbGRyb290IDQuMTkuNjAtY2lwNw0KDQojIGtleGVjIC12DQprZXhlYy10b29s
cyAyLjAuMTgNCg0KV2l0aGluIFFlbXUgdGhlIHN5c3RlbSByZWJvb3RzIHN1Y2Nlc3NmdWxseSBp
bnRvIHRoZSBuZXcga2VybmVsLCBldmVuIGlmIHRoZSBzYW1lIG91dHB1dCBpcyBnZW5lcmF0ZWQ6
DQoNCnJvb3RAcWVtdWFybTp+IyBrZXhlYyAtZQ0KWzEyMTM5LjMwODU0OF0ga2V4ZWNfY29yZTog
U3RhcnRpbmcgbmV3IGtlcm5lbA0KWzEyMTM5LjMxMzcwOV0gQnllIQ0KdnBiX3NpY193cml0ZTog
QmFkIHJlZ2lzdGVyIG9mZnNldCAweDJjDQpbICAgIDAuMDAwMDAwXSBCb290aW5nIExpbnV4IG9u
IHBoeXNpY2FsIENQVSAweDANClsgICAgMC4wMDAwMDBdIExpbnV4IHZlcnNpb24gNC4xOC4zMy15
b2N0by1zZWNvbmQgKG9lLXVzZXJAb2UtaG9zdCkgKGdjYyB2ZXJzaW9uIDguMi4wIChHQ0MpKSAj
MSBQUkVFTVBUIFR1ZSBBdWcgMTMgMDY6NTA6NTcgVVRDIDIwMTkNCg0KQ2FuIHNvbWVvbmUgZXhw
bGFpbiB3aGF0IHRoZSBzbHVycF9kZWNvbXByZXNzX2ZpbGUgZXhhY3RseSBkb2VzPw0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5n
IGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
