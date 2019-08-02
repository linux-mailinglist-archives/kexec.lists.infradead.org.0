Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654A97F15E
	for <lists+kexec@lfdr.de>; Fri,  2 Aug 2019 11:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gsdu2cB/+1QV64HfxS5Jw5U5aDAkJVND3rVQrpCxHDU=; b=Cr6v1nhv0U9B+M
	BRxCclyjR8WRJocUzDZUNm/ymzKIKhpv1B6HuOy6sKbW4P93rw27Q1+ThIyqxLnxGSrI5E2dX7sQC
	k+ORylFwga3CzTzamUUVnMwPKHGb/jqbi/KkLf4jSfYpbYBsY8SJ4vxIP2kd6F+pwy1YoD/SfLmXE
	ohk3i/rFIo1kSm6whk5xkVHdV4bK8Boi78gIwWTTbRANeHJjcdEFvkv/vIYpNvn76P8t7aLY76oIn
	Hi04DmcDkH52rTl28Wp26YV0+pa2adn5QOOSqHSswHfQo3ZmpJh+FzZ/qWhRM3gBfZ4KDfFeju4i1
	TNsaxRkO4Y3MVDRIpM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htU1f-0002z9-Fd; Fri, 02 Aug 2019 09:39:03 +0000
Received: from mail-eopbgr150137.outbound.protection.outlook.com
 ([40.107.15.137] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htU1a-0002xp-U9
 for kexec@lists.infradead.org; Fri, 02 Aug 2019 09:39:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkWjYlaosGgI0AjvJK3sb5/N1W3w1WEPNlqzuH2hav4njBIinpFP3Hu6D4VlSRDXL9PL/uw7Rox7Vq/Ka8FocJbG6VOOsBEX+Fl0B8bu8DVFAXVLpDsrJBsFBh4Vc5+GfsaN9NB22t7+ajL5CjDGDrfXvnN1UsYTDak/c+U1hQI/Z4YcSwWhGjuoEeZBRnLrFp9uA8AfTZVXVxlrAhPoR794+0SPmOLVxAChMVaSFpjarU16CA0pOdlrE6k0zOyLr8CalQcEtkx6LbksujxeAInaz0ZjnAQbX8XzjANc0m3qrlNdVQMxZpjpklJd8PzLrJSZXsJd71LvWJxolFRekQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLTDjsQ405Ftd3HqUBuo0KosBXUpkAZ9FTb8QMCxCT4=;
 b=NrsLPSZyOWeez34Y8aX7MzyMXXOOfndva7LB10chRyfZ82NmO6NUSNkD0kPZbQizLzBob9hutAJMdg08F1g99Ckix3GvtzI7xmP0e1Tm5rJ951wbyPELmQ+e1Rl4qEnegTG9TX0vvYdHv2HyxqGrPEgmGNNdTNHRe85Gg4rzZgQMV15A7hUhuL/We6BvvuBA9VkKnk14RuM5UQdfPOBZANM94L5taY7OCUv45Gv0KREcbX1sHXhJELLzt9SIF3bQYVpxRqtNKsrDrZjaE6GbjZHlt4BkrL5HmwLG6yY7y8CjAu6IZk50Bg1JCAt45cF7Yxa+aS81AFEi7Pn8YmvaVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nedap.com;dmarc=pass action=none
 header.from=nedap.com;dkim=pass header.d=nedap.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nedap.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLTDjsQ405Ftd3HqUBuo0KosBXUpkAZ9FTb8QMCxCT4=;
 b=tbNLqpcMo5cy8Q8dZ5zTWNDxUhsPnJteESivI5Y6E257nZ2O2fhZ6YO/Cti3p64wI86XvwqivgOPtLoSqujhKG5H7sJaSezhB3N3/rKZvjeT1MaHzDiuC4pe7m7L7FJpAMkLByrcvQrPErGjG4UN+zsxjA56mXy+HtM9+UpdBno=
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM (20.178.205.17) by
 VI1PR10MB3184.EURPRD10.PROD.OUTLOOK.COM (52.133.244.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 09:38:54 +0000
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd]) by VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd%6]) with mapi id 15.20.2115.005; Fri, 2 Aug 2019
 09:38:54 +0000
From: Maikel Coenen <maikel.coenen@nedap.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: No compression technique of zImage/uImage detected - ARM
Thread-Topic: No compression technique of zImage/uImage detected - ARM
Thread-Index: AQHVQf97ymOykNqYQ0u4hEk/a9nQIqbZnbAAgAdz1wCAAFT3AIADTOgAgAMWU4A=
Date: Fri, 2 Aug 2019 09:38:53 +0000
Message-ID: <CEF7C3A8-39E8-411E-B716-972451684B02@nedap.com>
References: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
 <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
 <5088a9d0-5638-1c41-1968-fc973e773e52@redhat.com>
 <6AB2A445-6C9D-451A-8CEB-5F5AC8A15545@nedap.com>
 <CACi5LpNKRCqnQz4WDEe6t0LPbELeepALnrgqcDEdf0GeSD8fcA@mail.gmail.com>
In-Reply-To: <CACi5LpNKRCqnQz4WDEe6t0LPbELeepALnrgqcDEdf0GeSD8fcA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maikel.coenen@nedap.com; 
x-originating-ip: [87.249.123.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bee1e49-1793-4771-3bb5-08d7172d3c08
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR10MB3184; 
x-ms-traffictypediagnostic: VI1PR10MB3184:
x-microsoft-antispam-prvs: <VI1PR10MB3184F2A70D4D8FB3FD00E0A7EED90@VI1PR10MB3184.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(136003)(396003)(39850400004)(366004)(199004)(189003)(2906002)(71200400001)(5660300002)(53936002)(6246003)(25786009)(68736007)(14444005)(256004)(4326008)(66446008)(7736002)(64756008)(14454004)(76116006)(91956017)(99286004)(6436002)(6486002)(86362001)(305945005)(229853002)(66556008)(6512007)(66946007)(486006)(476003)(11346002)(446003)(66066001)(44832011)(53546011)(6506007)(76176011)(66476007)(3846002)(36756003)(2616005)(478600001)(6116002)(71190400001)(8676002)(81166006)(102836004)(33656002)(6916009)(316002)(26005)(8936002)(81156014)(186003)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB3184;
 H:VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nedap.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UJ945SR1pxKCiKn9OTTlV49bYAr83YvS0+J23F3A8u0pNOFaU7HDTWyA6lZszFlp+e+PNp817DWotD/FATMnJ+Z23n2rNq2VMWy9PYFDrMXxI2uUSd57TvZh4L8GjuhUvUmJQUpsIJ9yI0sJTJoJM0kB8ODo7iP+M1FY/uwzUA7b98inMAOWuyC3rS2zgWkuh7flRW1v6/vDlPnR45wd7Y3JRh9O21O0cpbFXpWKjZxc5VPo9rGbUsaXdcP2V227TLKSI7VBu+fqjWkBEinuV3ZFjQiod8o9t1ZtYXJpL6UbJ9s4pru7sxHFS1xMY6xF5hRwfUQtolfxIaAPLHKQ4RrHB5IFW7qAB/gsgtH3J3QMb031hGcyTKKaKPCdI2JBkc8lgNujib3CLQKxYkNRyLXW0FJzDUhlnfMb57HXYvE=
Content-ID: <29B6A7EBFE210D4F993476A295B663C5@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: nedap.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bee1e49-1793-4771-3bb5-08d7172d3c08
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 09:38:54.2075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d21d161-0ae7-4a24-94cf-df0881e2fa96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maikel.coenen@nedap.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_023859_231222_AA1128CC 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.137 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

PjMxLzA3LzIwMTksIDE0OjMwLCAiQmh1cGVzaCBTaGFybWEiIDxiaHNoYXJtYUByZWRoYXQuY29t
PiB3cm90ZTo+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDE6MzYgUE0gTWFpa2VsIENvZW5lbiA8
bWFpa2VsLmNvZW5lbkBuZWRhcC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gPiBPbiAyOS8wNy8yMDE5
LCAwNzowMiwgIkJodXBlc2ggU2hhcm1hIiA8YmhzaGFybWFAcmVkaGF0LmNvbT4gd3JvdGU6Pg0K
PiA+DQo+ID4gPiAgICAgSGkgTWFpa2VsLA0KPiA+ID4NCj4gPiA+ICAgICBJIGhhdmUgYSBjb3Vw
bGUgb2YgcXVlcmllcyAoc28gdGhhdCBJIGNhbiBoZWxwIHlvdSBiZXR0ZXIpLiBQbGVhc2Ugc2Vl
DQo+ID4gPiAgICAgdGhlbSBpbi1saW5lOg0KPiA+ID4NCj4gPiA+ICAgICBPbiAwNy8yNC8yMDE5
IDAyOjQzIFBNLCBNYWlrZWwgQ29lbmVuIHdyb3RlOg0KPiA+ID4gICAgID4gSGksDQo+ID4gPiAg
ICAgPg0KPiA+ID4gICAgID4gSSBoYXZlIG1ldCBhbiBpc3N1ZSBkdXJpbmcgbG9hZGluZyBhIG5l
dyBrZXJuZWwgd2l0aCBLZXhlYyBvbiBhbiBBUk12NSBTb0MuIFRoZSBrZXJuZWwgaXMgYSA0LjE5
IHdpdGggR3ppcCBjb21wcmVzc2lvbiBidXQgZHVyaW5nIGxvYWRpbmcgS2V4ZWMgZG9lcyBub3Qg
cmVjb2duaXplIHRoZSBjb21wcmVzc2lvbi4NCj4gPiA+ICAgICA+DQo+ID4gPiAgICAgPiBJZiBJ
IGxvYWQgdGhlIG5ldyBrZXJuZWwgYW5kIGR0YiB3aXRoOg0KPiA+ID4gICAgID4NCj4gPiA+ICAg
ICA+IGtleGVjIC1sIC9ib290L3pJbWFnZSAtZCAtLWR0Yj0vYm9vdC91LWJvb3QuZHRiDQo+ID4g
Pg0KPiA+ID4gICAgIENhbiB5b3UgcGxlYXNlIHNob3cgdGhlIG91dHB1dCBvZiB0aGUgZm9sbG93
aW5nIGNvbW1hbmQ6DQo+ID4gPiAgICAgJCBmaWxlIC9ib290L3pJbWFnZQ0KPiA+DQo+ID4geklt
YWdlOiBMaW51eCBrZXJuZWwgQVJNIGJvb3QgZXhlY3V0YWJsZSB6SW1hZ2UgKGxpdHRsZS1lbmRp
YW4pDQo+ID4NCj4gPiBJIGFsc28gcGVyZm9ybWVkIGEgYmlud2FsayB3aXRoIGZvbGxvd2luZyBv
dXRwdXQ6DQo+ID4gREVDSU1BTCAgICAgICAgIEhFWEFERUNJTUFMICAgICBERVNDUklQVElPTg0K
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gMCAgICAgICAgICAgICAgIDB4MCAgICAg
ICAgICAgICBMaW51eCBrZXJuZWwgQVJNIGJvb3QgZXhlY3V0YWJsZSB6SW1hZ2UgKGxpdHRsZS1l
bmRpYW4pDQo+ID4gMTY0MjQgICAgICAgICAgIDB4NDAyOCAgICAgICAgICBnemlwIGNvbXByZXNz
ZWQgZGF0YSwgbWF4aW11bSBjb21wcmVzc2lvbiwgZnJvbSBVbml4LCBsYXN0IG1vZGlmaWVkOiAx
OTcwLTAxLTAxIDAwOjAwOjAwIChudWxsIGRhdGUpDQo+ID4NCj4gPiA+ICAgICBBbHNvIGNhbiB5
b3UgcGxlYXNlIG1ha2Ugc3VyZSB0aGF0IHRoZSB6SW1hZ2UgaGFzIHRoZSByaWdodCBnemlwIGhl
YWRlcg0KPiA+ID4gICAgIDogbWFnaWMgaGVhZGVyICAweDFmLCAweDhiIChcMDM3IFwyMTMpDQo+
ID4NCj4gPiBBcyB5b3UgY2FuIHNlZSBpbiB0aGUgYmlud2FsayBvdXRwdXQsIGlzIHRoZSBtYWdp
YyBoZWFkZXIgZm91bmQgYXQgMHg0MDI4LiBUaGlzIGJlY2F1c2Ugb2YgdGhlIHpJbWFnZSBoZWFk
ZXIuDQo+ID4gV2hlbiBJIGNoZWNrIHRoZSB6SW1hZ2UgbWFudWFsbHksIGl0IGlzIGluZGVlZCBh
dCB0aGF0IGxvY2F0aW9uLg0KPiA+DQo+ID4gPiAgICAgPiBUaGUgb3V0cHV0IGlzOg0KPiA+ID4g
ICAgID4NCj4gPiA+ICAgICA+IFRyeSBnemlwIGRlY29tcHJlc3Npb24uDQo+ID4gPiAgICAgPiBU
cnkgTFpNQSBkZWNvbXByZXNzaW9uLg0KPiA+ID4gICAgID4gbHptYV9kZWNvbXByZXNzX2ZpbGU6
IHJlYWQgb24gL2Jvb3QvekltYWdlIG9mIDY1NTM2IGJ5dGVzIGZhaWxlZA0KPiA+ID4gICAgID4g
a2VybmVsOiAweGI2YTY4MDA4IGtlcm5lbF9zaXplOiAweDQ5NGQzMA0KPiA+ID4gICAgID4gTUVN
T1JZIFJBTkdFUw0KPiA+ID4gICAgID4gMDAwMDAwMDAwMDAwMDAwMC0wMDAwMDAwMDBmZmZmZmZm
ICgwKQ0KPiA+ID4gICAgID4gekltYWdlIGhlYWRlcjogMHgwMTZmMjgxOCAweDAwMDAwMDAwIDB4
MDA0OTRkMzANCj4gPiA+ICAgICA+IHpJbWFnZSBzaXplIDB4NDk0ZDMwLCBmaWxlIHNpemUgMHg0
OTRkMzANCj4gPiA+ICAgICA+IGtleGVjX2xvYWQ6IGVudHJ5ID0gMHg4MDAwIGZsYWdzID0gMHgy
ODAwMDANCj4gPiA+ICAgICA+IG5yX3NlZ21lbnRzID0gMg0KPiA+ID4gICAgID4gc2VnbWVudFsw
XS5idWYgICA9IDB4YjZhNjgwMDgNCj4gPiA+ICAgICA+IHNlZ21lbnRbMF0uYnVmc3ogPSAweDQ5
NGQzMA0KPiA+ID4gICAgID4gc2VnbWVudFswXS5tZW0gICA9IDB4ODAwMA0KPiA+ID4gICAgID4g
c2VnbWVudFswXS5tZW1zeiA9IDB4NDk1MDAwDQo+ID4gPiAgICAgPiBzZWdtZW50WzFdLmJ1ZiAg
ID0gMHgxZmNmMDYwDQo+ID4gPiAgICAgPiBzZWdtZW50WzFdLmJ1ZnN6ID0gMHgyNDViDQo+ID4g
PiAgICAgPiBzZWdtZW50WzFdLm1lbSAgID0gMHgxNmYyMDAwDQo+ID4gPiAgICAgPiBzZWdtZW50
WzFdLm1lbXN6ID0gMHgzMDAwDQo+ID4gPiAgICAgPg0KPiA+ID4gICAgID4gTG9va2luZyBhdCB0
aGUgZGVidWcsIHRoZSBmdW5jdGlvbiBnemRpcmVjdCByZXR1cm5zIOKAnDHigJ0gd2hpY2ggaW5k
aWNhdGVzIHRoZSBrZXJuZWwgY29tcHJlc3Npb24gaXMgbm90IG9mIGd6aXAgYnV0IEkgZGVmaW5p
dGVseSB1c2UgZ3ppcC4NCj4gPiA+ICAgICA+IEkgYWxzbyB0ZXN0ZWQgaXQgd2l0aCBMWk1BIGNv
bXByZXNzaW9uIGFuZCB1SW1hZ2UgaW5zdGVhZCBvZiB6SW1hZ2UgYnV0IGFsbCB3aXRoIHRoZSBz
YW1lIG91dGNvbWUuDQo+ID4gPiAgICAgPg0KPiA+ID4gICAgID4gVG8gYmUgY29tcGxldGUsIEkg
dXNlIEtleGVjLXRvb2xzIDIuMC4xOSBhbmQgemxpYiAxLjIuMTEuDQo+ID4gPiAgICAgPg0KPiA+
ID4gICAgID4gRGlkIEkgaW1wbGVtZW50IHNvbWV0aGluZyB3cm9uZyBvciBob3cgY2FuIEkgZGVi
dWcgdGhpcyBmdXJ0aGVyPw0KPiA+ID4NCj4gPiA+ICAgICBJIGRvbid0IGhhdmUgYSBhcm12NSBo
YXJkd2FyZSBhbmQgbXkgYXR0ZW1wdCB0byBzZXR1cCBhIHFlbXUgKyBidWlsZHJvb3QNCj4gPiA+
ICAgICBzZXR1cCBmb3IgQVJNdjUgKDkyNnQpIGxlYWQgdG8gYSBmYWlsdXJlIHRvIGJvb3QgdGhl
IGxhdGVzdCB1cHN0cmVhbSBrZXJuZWwuDQo+ID4gPg0KPiA+ID4gICAgIEkgd2lsbCB0cnkgdG8g
Zml4IHVwIHRoZSBzZXR1cCBhbmQgY29tZSBiYWNrIHdpdGggbW9yZSBkZXRhaWxzLg0KPiA+ID4g
ICAgIEluIHRoZSBtZWFud2hpbGUgaWYgeW91IGNhbiBzaGFyZSB0aGUgYWJvdmUsIEkgY2FuIGhh
dmUgZnVydGhlciBsb29rIGF0DQo+ID4gPiAgICAgdGhlIHNhbWUuDQo+IA0KPiBXZWxsLCBJIGNh
bid0IHJlcHJvZHVjZSB0aGUgaXNzdWUgeW91IHJlcG9ydGVkIGF0IG15IGVuZC4NCj4gSGVyZSBp
cyBteSBlbnZpcm9ubWVudDoNCj4gDQo+ICQgcWVtdS1zeXN0ZW0tYXJtIC0tdmVyc2lvbg0KPiBR
RU1VIGVtdWxhdG9yIHZlcnNpb24gMi4xMS4yKHFlbXUtMi4xMS4yLTUuZmMyOCkNCj4gQ29weXJp
Z2h0IChjKSAyMDAzLTIwMTcgRmFicmljZSBCZWxsYXJkIGFuZCB0aGUgUUVNVSBQcm9qZWN0IGRl
dmVsb3BlcnMNCj4gDQo+ICMgdW5hbWUgLXJuDQo+IGJ1aWxkcm9vdCA0LjE5LjE2DQo+IA0KPiAj
IGtleGVjIC12DQo+IGtleGVjLXRvb2xzIDIuMC4xOA0KPiANCj4gIyBrZXhlYyAtbCB6SW1hZ2Ug
LWQgLS1kdGI9dmVyc2F0aWxlLXBiLmR0Yg0KPiBUcnkgZ3ppcCBkZWNvbXByZXNzaW9uLg0KPiBr
ZXJuZWw6IDB4YjZjNDYwMDgga2VybmVsX3NpemU6IDB4MjljYjQ4DQo+IE1FTU9SWSBSQU5HRVMN
Cj4gMDAwMDAwMDAwMDAwMDAwMC0wMDAwMDAwMDA3ZmZmZmZmICgwKQ0KPiB6SW1hZ2UgaGVhZGVy
OiAweDAxNmYyODE4IDB4MDAwMDAwMDAgMHgwMDI5Y2I0OA0KPiB6SW1hZ2Ugc2l6ZSAweDI5Y2I0
OCwgZmlsZSBzaXplIDB4MjljYjQ4DQo+IHpJbWFnZSByZXF1aXJlcyAweDAwMmFkYjQ4IGJ5dGVz
DQo+ICAgb2Zmc2V0IDB4MDAwMDM5MzQgdGFnIDB4NWE1MzRjNGIgc2l6ZSA4DQo+IERlY29tcHJl
c3NlZCBrZXJuZWwgc2l6ZXM6DQo+ICB0ZXh0K2RhdGEgMHgwMDUwZmUzMCBic3MgMHgwMDAzMWRl
NCB0b3RhbCAweDAwNTQxYzE0DQo+IFJlc3VsdGluZyBrZXJuZWwgc3BhY2U6IDB4MDA3YmQ5NzgN
Cj4gS2VybmVsOiBhZGRyZXNzPTB4MDAwMDgwMDAgc2l6ZT0weDAwN2JkOTc4DQo+IERUICAgIDog
YWRkcmVzcz0weDAwN2M3MDAwIHNpemU9MHgwMDAwMjI3OA0KPiBrZXhlY19sb2FkOiBlbnRyeSA9
IDB4ODAwMCBmbGFncyA9IDB4MjgwMDAwDQo+IG5yX3NlZ21lbnRzID0gMg0KPiBzZWdtZW50WzBd
LmJ1ZiAgID0gMHhiNmM0NjAwOA0KPiBzZWdtZW50WzBdLmJ1ZnN6ID0gMHgyOWNiNGMNCj4gc2Vn
bWVudFswXS5tZW0gICA9IDB4ODAwMA0KPiBzZWdtZW50WzBdLm1lbXN6ID0gMHgyOWQwMDANCj4g
c2VnbWVudFsxXS5idWYgICA9IDB4NDdjYTgNCj4gc2VnbWVudFsxXS5idWZzeiA9IDB4MjI3OA0K
PiBzZWdtZW50WzFdLm1lbSAgID0gMHg3YzcwMDANCj4gc2VnbWVudFsxXS5tZW1zeiA9IDB4MzAw
MA0KPiANCj4gQXMgeW91IGNhbiBzZWUgZnJvbSB0aGUgbG9ncyBhYm92ZSB0aGUgekltYWdlIGZv
cm1hdCBpcyBjb3JyZWN0bHkNCj4gcmVjb2duaXplZCBhbmQgZGVjb21wcmVzc2VkLg0KPiANCj4g
V2hlbiBJIHJ1biAna2V4ZWMgLWUnLCBJIGNhbiBsYXVuY2ggdGhlIG5ldyBrZXJuZWwganVzdCBm
aW5lLg0KPiANCj4gSSBkb24ndCBzZWUgYW55IG5ldyBwYXRjaGVzIGluICdrZXhlYy9hcmNoL2Fy
bScgZm9sZGVyIGJldHdlZW4NCj4ga2V4ZWMtdG9vbHMgMi4wLjE4IChhdCBteSBlbmQpIGFuZCBr
ZXhlYy10b29scyAyLjAuMTkgKHdoaWNoIHlvdSB1c2UpLA0KPiBzbyBJIGFtIG9mIHRoZSB2aWV3
IHRoYXQgdGhlIGlzc3VlIGlzIG9mIHRoZSB6SW1hZ2UgaW1hZ2UgZ2VuZXJhdGlvbg0KPiBwcm9i
YWJseS4NCj4gDQo+IFNpbmNlLCAna2V4ZWMvYXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jJyBh
bHNvIHN1cHBvcnRzIHVuY29tcHJlc3NlZA0KPiBrZXJuZWwgSW1hZ2UsIHlvdSBjYW4gdHJ5IGxv
YWRpbmcgdGhlIEltYWdlIGZpbGUgZGlyZWN0bHkgYW5kIHNlZSBpZg0KPiB0aGF0IG1ha2VzIGEg
ZGlmZmVyZW5jZSAoeW91IGNhbiBmaW5kIGl0IGhlcmUgaW4gdGhlIGtlcm5lbCB0cmVlOg0KPiBh
cmNoL2FybS9ib290L0ltYWdlKToNCj4gDQo+ICMga2V4ZWMgLWwgSW1hZ2UgLWQgLS1kdGI9dmVy
c2F0aWxlLXBiLmR0Yg0KPiBUcnkgZ3ppcCBkZWNvbXByZXNzaW9uLg0KPiBrZXJuZWw6IDB4YjVm
M2EwMDgga2VybmVsX3NpemU6IDB4ZmM0ZjIwDQo+IE1FTU9SWSBSQU5HRVMNCj4gMDAwMDAwMDAw
MDAwMDAwMC0wMDAwMDAwMDA3ZmZmZmZmICgwKQ0KPiB6SW1hZ2UgaGVhZGVyOiAweGViMDAwMDVh
IDB4ZWIwMDAwNDQgMHhlYjAwMDAwOQ0KPiB6SW1hZ2UgcmVxdWlyZXMgMHgwMGZkNWYyMCBieXRl
cw0KPiBLZXJuZWw6IGFkZHJlc3M9MHgwMDAwODAwMCBzaXplPTB4MDRmMmRiYTANCj4gRFQgICAg
OiBhZGRyZXNzPTB4MDRmMzcwMDAgc2l6ZT0weDAwMDAyMjc4DQo+IGtleGVjX2xvYWQ6IGVudHJ5
ID0gMHg4MDAwIGZsYWdzID0gMHgyODAwMDANCj4gbnJfc2VnbWVudHMgPSAyDQo+IHNlZ21lbnRb
MF0uYnVmICAgPSAweGI1ZjNhMDA4DQo+IHNlZ21lbnRbMF0uYnVmc3ogPSAweGZjNGYyNA0KPiBz
ZWdtZW50WzBdLm1lbSAgID0gMHg4MDAwDQo+IHNlZ21lbnRbMF0ubWVtc3ogPSAweGZjNTAwMA0K
PiBzZWdtZW50WzFdLmJ1ZiAgID0gMHg0N2NhOA0KPiBzZWdtZW50WzFdLmJ1ZnN6ID0gMHgyMjc4
DQo+IHNlZ21lbnRbMV0ubWVtICAgPSAweDRmMzcwMDANCj4gc2VnbWVudFsxXS5tZW1zeiA9IDB4
MzAwMA0KPiANCj4gVGhhbmtzLA0KPiBCaHVwZXNoDQoNCkkgcHJldmlvdXNseSBidWlsZCBteSBr
ZXJuZWwgd2l0aGluIHRoZSBZb2N0byBlbnZpcm9ubWVudCBidXQgbm93IGRpZCBpdCBtYW51YWxs
eSAoVG9ydmFsZHMgZ2l0IDQuMTkpIHdpdGggdGhlIHNhbWUgcmVzdWx0LiBBbHNvIGNoZWNrZWQg
bXkga2VybmVsIGNvbmZpZ3VyYXRpb24gd2l0aG91dCBwb3NpdGl2ZSByZXN1bHRzLiANCkkgY2Fu
IHN1Y2Nlc3NmdWxseSBib290IHRoaXMga2VybmVsIGZyb20gdS1ib290Lg0KDQpBbHNvIHRoZSB1
bmNvbXByZXNzZWQgSW1hZ2UgZmlsZSBnaXZlcyB0aGUgZm9sbG93aW5nIHJlc3VsdDoNCg0KIyBr
ZXhlYyAtbCAvYm9vdC9JbWFnZSAtZCAtLWR0Yj0vYm9vdC91LWJvb3QuZHRiDQpUcnkgZ3ppcCBk
ZWNvbXByZXNzaW9uLg0KVHJ5IExaTUEgZGVjb21wcmVzc2lvbi4NCmx6bWFfZGVjb21wcmVzc19m
aWxlOiByZWFkIG9uIC9ib290L0ltYWdlIG9mIC0xMDkzMDM1NjMyIGJ5dGVzIGZhaWxlZA0Ka2Vy
bmVsOiAweGI2NjU4MDA4IGtlcm5lbF9zaXplOiAweDcwMGY4Yw0KTUVNT1JZIFJBTkdFUw0KMDAw
MDAwMDAwMDAwMDAwMC0wMDAwMDAwMDBmZmZmZmZmICgwKQ0KekltYWdlIGhlYWRlcjogMHhlYjAw
MDA1YSAweGViMDAwMDQ0IDB4ZWIwMDAwMDkNCnpJbWFnZSByZXF1aXJlcyAweDAwNzExZjhjIGJ5
dGVzDQpLZXJuZWw6IGFkZHJlc3M9MHgwMDAwODAwMCBzaXplPTB4MDIzNTlkYmMNCkRUICAgIDog
YWRkcmVzcz0weDAyMzYzMDAwIHNpemU9MHgwMDAwMjQ1Yg0Ka2V4ZWNfbG9hZDogZW50cnkgPSAw
eDgwMDAgZmxhZ3MgPSAweDI4MDAwMA0KbnJfc2VnbWVudHMgPSAyDQpzZWdtZW50WzBdLmJ1ZiAg
ID0gMHhiNjY1ODAwOA0Kc2VnbWVudFswXS5idWZzeiA9IDB4NzAwZjkwDQpzZWdtZW50WzBdLm1l
bSAgID0gMHg4MDAwDQpzZWdtZW50WzBdLm1lbXN6ID0gMHg3MDEwMDANCnNlZ21lbnRbMV0uYnVm
ICAgPSAweDUxNTA1OA0Kc2VnbWVudFsxXS5idWZzeiA9IDB4MjQ1Yg0Kc2VnbWVudFsxXS5tZW0g
ICA9IDB4MjM2MzAwMA0Kc2VnbWVudFsxXS5tZW1zeiA9IDB4MzAwMA0KDQpBcmUgdGhlcmUgc3Bl
Y2lhbCBrZXJuZWwgY29uZmlndXJhdGlvbiBvcHRpb25zIEkgaGF2ZSB0byBlbmFibGUvZGlzYWJs
ZSB3aGljaCBpbmZsdWVuY2VzIHRoZSB6SW1hZ2UgaGVhZGVyPw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2tleGVjCg==
