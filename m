Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4D4786FC
	for <lists+kexec@lfdr.de>; Mon, 29 Jul 2019 10:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+s8QS6UjAJ8KfSt9AYclBtb+oZEmr6q3mL6iejdMHzQ=; b=fMV7fjxsbmJmsV
	2xdQdeFGFHQSpuj1M/18GMQopryRO7Oaa8E5EFBNixCOnYtjnXdRJii5oV7lwLUL6JqgyY4JrijrP
	H4dLFmdX4p+7exV2Ucnf6KoylnHnfQOtAXmHOXsMxzbGJocFjuKgJQy7Uiu8e6Zwzxn8+sG4RHAYz
	xyBGIJWUeITqvS3kNJLD+jhc0JuLlISH7eiFijMdiW5C/1drgltqz9lz0spLLWn60zRt3po1SvLu0
	D6lEjSl7HT5DVLEsrrBtoBVhc6W7f1zMN+JUz5YGAdR8iZyn6jjbQqUntv+GO+3IcvqSG7AbX/upm
	3R8DhL2U3XyBdIL+TE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0fj-0005AD-K7; Mon, 29 Jul 2019 08:06:19 +0000
Received: from mail-eopbgr30138.outbound.protection.outlook.com
 ([40.107.3.138] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0ff-00059f-AL
 for kexec@lists.infradead.org; Mon, 29 Jul 2019 08:06:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCA6xGgXwXUlMRBg74ofv5XIs6MCaNyQ+x/Iqelq9+GSvvspX6cW9mZ/Kr3DY/zw8QPbIz+hf1I4LK4gXYYSZgZU5F1vTViRIUmtC+flmN4mPvaqxOfqTax3UVEkBcDawwsfSyODGQePExuE4DtgdqsiQnztKdvGpNHNupOviwCRUzKNHEEKLz/t6E7VTmdY1iS+cAeAadXeh8MfXTNHhKMpMjBp0OgPL3iWQfqYbOAj/MXJ7R3SsOL3iLxH/336XrxFh10+SidMe6eur1SPFPEJrZiUHLuoNItYEZNHwtYPOHvIxHpOvI/a+0uuD/B5PshPhKZT0tHcGjrPjox+eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ir4p9+5TcbezjTDY7KsJkYzJboefBJEzG2Opq6BBfs0=;
 b=VGJ5jcDjp1gL724NWjDhvwBlIVfRohStoVnI+ngdTJEAyTyWo8yCHgLp/3TM53kxfMmsiybRngUmFw9pKgrYVLk5dhI3cGhIhk7m+36KXhs2sGVfXi6mUEDwwv1Y+U72TC835qc3uv+ZqU9ye2EKZ/Sq+ZixOpaxFYuKXXtzs462rsQU2ydba5WwHRzsvK9fP64tMsnzEUgGIvR3YhtfptzVLX9/npgzO/xJuPKpqj7IYqr+SL5tpUfr4ERkAbDaKQABqZBrlFcJ7zC9jWNerGeNg56UXxxTlPTeKDVxuJtXlUJxB0kMu0UBe+qpgyTVhfHrDmb4PiQFXlHKJk0d4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nedap.com;dmarc=pass action=none
 header.from=nedap.com;dkim=pass header.d=nedap.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nedap.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ir4p9+5TcbezjTDY7KsJkYzJboefBJEzG2Opq6BBfs0=;
 b=q6w9lBXFH7LNmzYvE/NHMb+kgR3avDlqOuw1JgCP/A9Lva1wl1gEtU8o0uqCIo2aF36hG5Hq6anQhVKZqIL9dHLcoGtf+NEwsAgJBcJvzbez/TkxxD1Hv9HPlZQPa0qfNIYzIKrFzHAPRLtk1u0faLEE0eefjkO3NeHo9qdWvoM=
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM (20.178.205.17) by
 VI1PR10MB3342.EURPRD10.PROD.OUTLOOK.COM (52.133.247.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Mon, 29 Jul 2019 08:06:10 +0000
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd]) by VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd%6]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 08:06:10 +0000
From: Maikel Coenen <maikel.coenen@nedap.com>
To: Bhupesh Sharma <bhsharma@redhat.com>, "kexec@lists.infradead.org"
 <kexec@lists.infradead.org>, Bhupesh SHARMA <bhupesh.linux@gmail.com>
Subject: No compression technique of zImage/uImage detected - ARM
Thread-Topic: No compression technique of zImage/uImage detected - ARM
Thread-Index: AQHVQf97ymOykNqYQ0u4hEk/a9nQIqbZnbAAgAdz1wCAAFT3AA==
Date: Mon, 29 Jul 2019 08:06:10 +0000
Message-ID: <6AB2A445-6C9D-451A-8CEB-5F5AC8A15545@nedap.com>
References: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
 <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
 <5088a9d0-5638-1c41-1968-fc973e773e52@redhat.com>
In-Reply-To: <5088a9d0-5638-1c41-1968-fc973e773e52@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maikel.coenen@nedap.com; 
x-originating-ip: [87.249.123.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd4fb9a0-62a5-44d3-ff59-08d713fb9dff
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR10MB3342; 
x-ms-traffictypediagnostic: VI1PR10MB3342:
x-microsoft-antispam-prvs: <VI1PR10MB3342E5BFCD5F1FC1A19789C2EEDD0@VI1PR10MB3342.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(366004)(136003)(346002)(39850400004)(189003)(199004)(8676002)(6116002)(68736007)(33656002)(66066001)(2501003)(6486002)(2906002)(316002)(81166006)(81156014)(3846002)(6436002)(99286004)(53936002)(5660300002)(7736002)(25786009)(8936002)(305945005)(102836004)(6512007)(14444005)(76176011)(486006)(53546011)(71200400001)(66476007)(44832011)(86362001)(446003)(6506007)(66946007)(76116006)(26005)(476003)(256004)(66556008)(186003)(64756008)(110136005)(14454004)(478600001)(91956017)(71190400001)(11346002)(36756003)(2616005)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB3342;
 H:VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nedap.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W9hzeDl8ly+dSsxaJX/+y38z8IwGYMRpXdpR+G/XM2Nb/E3jaMtvZAx7S8SA99lyj/hqdWzl73oQnTwLGhGkPiNxz4tlAzM9Em/+dXiP+thB8eHK1cGeeowXJMvqM0GRDszekxPwPR1uhe5fZt8+p/umNWphw81U9pi1MUZOttSTspX4G0vkJ7dM1cAdZB1v9TxmoBn4UwRyvklKlt2CsNaNDY0mzIJK4XI60HmaHbdbzizl5iQ6BgG6iMILCbcrebj6y4suilq7wrXCfssmGsYAGeFVOy2MWHQgVTQV9byM1XOX8vz3ohbFBY18BKvujm1/ewePzCUAChS07syazmI1Uq/5MfmNytxip48Pbx2dTulxiwXRUYFR7A1PzsuThk1LFNaswbEt8LfIcPVQ+WOD4lLYZk4VQkv0ZHCwLlo=
Content-ID: <16DFB616AD2A274E9A046D625A46B116@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: nedap.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd4fb9a0-62a5-44d3-ff59-08d713fb9dff
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 08:06:10.2994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d21d161-0ae7-4a24-94cf-df0881e2fa96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maikel.coenen@nedap.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3342
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_010615_492524_393C9559 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.138 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

PiBPbiAyOS8wNy8yMDE5LCAwNzowMiwgIkJodXBlc2ggU2hhcm1hIiA8YmhzaGFybWFAcmVkaGF0
LmNvbT4gd3JvdGU6Pg0KDQo+ICAgICBIaSBNYWlrZWwsDQo+ICAgIA0KPiAgICAgSSBoYXZlIGEg
Y291cGxlIG9mIHF1ZXJpZXMgKHNvIHRoYXQgSSBjYW4gaGVscCB5b3UgYmV0dGVyKS4gUGxlYXNl
IHNlZQ0KPiAgICAgdGhlbSBpbi1saW5lOg0KPiAgICANCj4gICAgIE9uIDA3LzI0LzIwMTkgMDI6
NDMgUE0sIE1haWtlbCBDb2VuZW4gd3JvdGU6DQo+ICAgICA+IEhpLA0KPiAgICAgPiAgDQo+ICAg
ICA+IEkgaGF2ZSBtZXQgYW4gaXNzdWUgZHVyaW5nIGxvYWRpbmcgYSBuZXcga2VybmVsIHdpdGgg
S2V4ZWMgb24gYW4gQVJNdjUgU29DLiBUaGUga2VybmVsIGlzIGEgNC4xOSB3aXRoIEd6aXAgY29t
cHJlc3Npb24gYnV0IGR1cmluZyBsb2FkaW5nIEtleGVjIGRvZXMgbm90IHJlY29nbml6ZSB0aGUg
Y29tcHJlc3Npb24uDQo+ICAgICA+ICANCj4gICAgID4gSWYgSSBsb2FkIHRoZSBuZXcga2VybmVs
IGFuZCBkdGIgd2l0aDoNCj4gICAgID4gIA0KPiAgICAgPiBrZXhlYyAtbCAvYm9vdC96SW1hZ2Ug
LWQgLS1kdGI9L2Jvb3QvdS1ib290LmR0Yg0KPiAgICANCj4gICAgIENhbiB5b3UgcGxlYXNlIHNo
b3cgdGhlIG91dHB1dCBvZiB0aGUgZm9sbG93aW5nIGNvbW1hbmQ6DQo+ICAgICAkIGZpbGUgL2Jv
b3QvekltYWdlDQoNCnpJbWFnZTogTGludXgga2VybmVsIEFSTSBib290IGV4ZWN1dGFibGUgeklt
YWdlIChsaXR0bGUtZW5kaWFuKQ0KDQpJIGFsc28gcGVyZm9ybWVkIGEgYmlud2FsayB3aXRoIGZv
bGxvd2luZyBvdXRwdXQ6DQpERUNJTUFMICAgICAgIAlIRVhBREVDSU1BTCAgCURFU0NSSVBUSU9O
DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KMAkJMHgwCQlMaW51eCBrZXJuZWwgQVJNIGJvb3Qg
ZXhlY3V0YWJsZSB6SW1hZ2UgKGxpdHRsZS1lbmRpYW4pDQoxNjQyNAkJMHg0MDI4CQlnemlwIGNv
bXByZXNzZWQgZGF0YSwgbWF4aW11bSBjb21wcmVzc2lvbiwgZnJvbSBVbml4LCBsYXN0IG1vZGlm
aWVkOiAxOTcwLTAxLTAxIDAwOjAwOjAwIChudWxsIGRhdGUpDQoNCj4gICAgIEFsc28gY2FuIHlv
dSBwbGVhc2UgbWFrZSBzdXJlIHRoYXQgdGhlIHpJbWFnZSBoYXMgdGhlIHJpZ2h0IGd6aXAgaGVh
ZGVyDQo+ICAgICA6IG1hZ2ljIGhlYWRlciAgMHgxZiwgMHg4YiAoXDAzNyBcMjEzKQ0KDQpBcyB5
b3UgY2FuIHNlZSBpbiB0aGUgYmlud2FsayBvdXRwdXQsIGlzIHRoZSBtYWdpYyBoZWFkZXIgZm91
bmQgYXQgMHg0MDI4LiBUaGlzIGJlY2F1c2Ugb2YgdGhlIHpJbWFnZSBoZWFkZXIuDQpXaGVuIEkg
Y2hlY2sgdGhlIHpJbWFnZSBtYW51YWxseSwgaXQgaXMgaW5kZWVkIGF0IHRoYXQgbG9jYXRpb24u
ICAgIA0KICAgIA0KPiAgICAgPiBUaGUgb3V0cHV0IGlzOg0KPiAgICAgPiAgDQo+ICAgICA+IFRy
eSBnemlwIGRlY29tcHJlc3Npb24uDQo+ICAgICA+IFRyeSBMWk1BIGRlY29tcHJlc3Npb24uDQo+
ICAgICA+IGx6bWFfZGVjb21wcmVzc19maWxlOiByZWFkIG9uIC9ib290L3pJbWFnZSBvZiA2NTUz
NiBieXRlcyBmYWlsZWQNCj4gICAgID4ga2VybmVsOiAweGI2YTY4MDA4IGtlcm5lbF9zaXplOiAw
eDQ5NGQzMA0KPiAgICAgPiBNRU1PUlkgUkFOR0VTDQo+ICAgICA+IDAwMDAwMDAwMDAwMDAwMDAt
MDAwMDAwMDAwZmZmZmZmZiAoMCkNCj4gICAgID4gekltYWdlIGhlYWRlcjogMHgwMTZmMjgxOCAw
eDAwMDAwMDAwIDB4MDA0OTRkMzANCj4gICAgID4gekltYWdlIHNpemUgMHg0OTRkMzAsIGZpbGUg
c2l6ZSAweDQ5NGQzMA0KPiAgICAgPiBrZXhlY19sb2FkOiBlbnRyeSA9IDB4ODAwMCBmbGFncyA9
IDB4MjgwMDAwDQo+ICAgICA+IG5yX3NlZ21lbnRzID0gMg0KPiAgICAgPiBzZWdtZW50WzBdLmJ1
ZiAgID0gMHhiNmE2ODAwOA0KPiAgICAgPiBzZWdtZW50WzBdLmJ1ZnN6ID0gMHg0OTRkMzANCj4g
ICAgID4gc2VnbWVudFswXS5tZW0gICA9IDB4ODAwMA0KPiAgICAgPiBzZWdtZW50WzBdLm1lbXN6
ID0gMHg0OTUwMDANCj4gICAgID4gc2VnbWVudFsxXS5idWYgICA9IDB4MWZjZjA2MA0KPiAgICAg
PiBzZWdtZW50WzFdLmJ1ZnN6ID0gMHgyNDViDQo+ICAgICA+IHNlZ21lbnRbMV0ubWVtICAgPSAw
eDE2ZjIwMDANCj4gICAgID4gc2VnbWVudFsxXS5tZW1zeiA9IDB4MzAwMA0KPiAgICAgPiAgDQo+
ICAgICA+IExvb2tpbmcgYXQgdGhlIGRlYnVnLCB0aGUgZnVuY3Rpb24gZ3pkaXJlY3QgcmV0dXJu
cyDigJwx4oCdIHdoaWNoIGluZGljYXRlcyB0aGUga2VybmVsIGNvbXByZXNzaW9uIGlzIG5vdCBv
ZiBnemlwIGJ1dCBJIGRlZmluaXRlbHkgdXNlIGd6aXAuDQo+ICAgICA+IEkgYWxzbyB0ZXN0ZWQg
aXQgd2l0aCBMWk1BIGNvbXByZXNzaW9uIGFuZCB1SW1hZ2UgaW5zdGVhZCBvZiB6SW1hZ2UgYnV0
IGFsbCB3aXRoIHRoZSBzYW1lIG91dGNvbWUuDQo+ICAgICA+ICANCj4gICAgID4gVG8gYmUgY29t
cGxldGUsIEkgdXNlIEtleGVjLXRvb2xzIDIuMC4xOSBhbmQgemxpYiAxLjIuMTEuDQo+ICAgICA+
ICANCj4gICAgID4gRGlkIEkgaW1wbGVtZW50IHNvbWV0aGluZyB3cm9uZyBvciBob3cgY2FuIEkg
ZGVidWcgdGhpcyBmdXJ0aGVyPw0KPiAgICANCj4gICAgIEkgZG9uJ3QgaGF2ZSBhIGFybXY1IGhh
cmR3YXJlIGFuZCBteSBhdHRlbXB0IHRvIHNldHVwIGEgcWVtdSArIGJ1aWxkcm9vdA0KPiAgICAg
c2V0dXAgZm9yIEFSTXY1ICg5MjZ0KSBsZWFkIHRvIGEgZmFpbHVyZSB0byBib290IHRoZSBsYXRl
c3QgdXBzdHJlYW0ga2VybmVsLg0KPiAgICANCj4gICAgIEkgd2lsbCB0cnkgdG8gZml4IHVwIHRo
ZSBzZXR1cCBhbmQgY29tZSBiYWNrIHdpdGggbW9yZSBkZXRhaWxzLg0KPiAgICAgSW4gdGhlIG1l
YW53aGlsZSBpZiB5b3UgY2FuIHNoYXJlIHRoZSBhYm92ZSwgSSBjYW4gaGF2ZSBmdXJ0aGVyIGxv
b2sgYXQNCj4gICAgIHRoZSBzYW1lLg0KDQpUaGFua3MhDQoNCj4gICAgIFRoYW5rcywNCj4gICAg
IEJodXBlc2gNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
