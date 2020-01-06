Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C793C131A9D
	for <lists+kexec@lfdr.de>; Mon,  6 Jan 2020 22:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FJXX8Qmh6HmAYkoIUtsTWMyABgXyz1jR/hyD3rBUiU=; b=ilvhryvRm3AX20
	CaDLNPZ1xE3zdIw85e+YORXieuLACNpjVzbUiQeUY1eldGfAUYb4ALEoM6XLcKGgu5uyGXW3yn4UY
	b45gh+LZlnJm4N98J/xIT/GmqL2SYlX7KKyDvsbGp7Flh8bJQGBvbGcxsKEiCH9yDUr13/6KeqW5q
	vbi07rlkBC1xPwASKXnvP+NEFvTCXMyFDMRNDJbv3J1IG9Xpo0m8j+GnBAnW2fUNeybRdz4EGtKwr
	GJBRPjO7rhCmmx3PeDuQA9d/YGUVv7opYnjCsC778DafFho64v6uBgtvfX3vHHn/LljUOeQN6ckq+
	9xGsS+q2V/BgtTbJWiGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioa9T-0000xf-RP; Mon, 06 Jan 2020 21:43:07 +0000
Received: from mail-eopbgr1300073.outbound.protection.outlook.com
 ([40.107.130.73] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioa9P-0000wf-GJ
 for kexec@lists.infradead.org; Mon, 06 Jan 2020 21:43:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7z4PwhteCjQLlcZ/qdB9ckpegsnWh66lLJMwMlebz5LjDXoHljYAoWo1iC9aK+x77mi0VYJnsQ9qjbkG2j2PzYtz4Xr8KqjpoepIKlwy6rNWCIw05CQfN1NSJpLd54uOcMceypeWqFq6tD8+aGaTsAO5sjX+9r0m7ConcfgxVsCQymP37P93DeEpxXecfufVGU4WV0quntocuARIp40lVM033YQGMW/WpB+ByrmeyukP29tdL76ARNJxNyChp8QHVA8k+Hl47mys8kgTlLFJGbBYiMGgdQ24A7L0ibmaha8WQj3+JNViIZtNQ3mxFqd0acco5H5mLrKBjyGjk2ibQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6l+lzLtViyEznQs1bIflBOqakGjKAUxotHfuZuRwlOk=;
 b=hpsS+qeb53SDGUQT0pDhqwBr/ECKdq01tZ6ac/N3zbUDl8IlNBo1UFKBEceKnrgr/xSH9kGud1lWMWZtmj86FGLl6QGrzoSnUJhUvLv55u/TKgl4m7seGzCZ8qfCPQgeg9bMl5hYTRhe3VrNHL+9f7Gq92IZO3PPpH9dAXCaryne8LPJlmY+04wU9fuCpMT3AbaEcubU+hH4K+YnuVgsnOK+c0wrvvV6ARpBctiKGPcy/AeJdLLEPAGyyXR1mH1BoX4lQZt0+y78USj4dfFj+8daO/ovWV54hqvwloigZl5vYk5fU+GBd6s+swxOv3xm+PE6frcw99na3oe1/GD+jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6l+lzLtViyEznQs1bIflBOqakGjKAUxotHfuZuRwlOk=;
 b=Yb4a3FGrWRAcO6cKhLi5Omr8PMUnFcouhZsAaoaEBbJGdyPY4BXqQfMRhd874r8XMYejt0TnVJ6j05W2aquoUaK5wIBmoLfibMFvcDkzCiYCVOrXKtXhdnNTLqolgSfmra/oeSmaaSl4FqgkFeH9NlPwef/HgChGRGgZP35WbOc=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB5065.jpnprd01.prod.outlook.com (20.179.171.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Mon, 6 Jan 2020 21:42:56 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::f580:4b2c:c69c:c28c]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::f580:4b2c:c69c:c28c%5]) with mapi id 15.20.2602.016; Mon, 6 Jan 2020
 21:42:56 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Zaslonko Mikhail <zaslonko@linux.ibm.com>
Subject: RE: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Topic: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Index: AQHVu539YdIeeoZhrkK9VP733OiLmafLzJ4AgAJPLKCABGEPgIAGvFLggABGiACABKTRYA==
Date: Mon, 6 Jan 2020 21:42:56 +0000
Message-ID: <TY2PR01MB521032C755BF1FCCDA0239B9DD3C0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
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
In-Reply-To: <3e5e68a2-edfe-6545-db97-277d5be36f8a@linux.ibm.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ab96246-af6e-425a-d976-08d792f16443
x-ms-traffictypediagnostic: TY2PR01MB5065:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB50654A88AE55901A82A62F73DD3C0@TY2PR01MB5065.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(346002)(136003)(396003)(13464003)(199004)(189003)(71200400001)(66946007)(54906003)(26005)(64756008)(66446008)(66556008)(66476007)(76116006)(966005)(316002)(5660300002)(86362001)(52536014)(2906002)(186003)(85182001)(8676002)(6916009)(33656002)(55016002)(7696005)(81156014)(81166006)(6506007)(478600001)(8936002)(9686003)(4326008)(53546011)(317694003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB5065;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ez3h6IyMUMMNQ66WUtKl10qiT1HMai88d5MwLz3FTajYkhLVJqruEXfO/g1M6m1cTS7C0CczKhE3YouRFQImyreLydNIDP0HYxZGghaCr+mAIOd8m2QdtV2NlX36ubLcDT1VuJxsVmhj5bD5AnXW1HcYN1Li2GQie5Rozv1Qek4ehpTgqTfSydenUN1iQoVqng0/YziHx2z3eWh4EVg93vQLnerGb62HFt9fytCbIx+P+QqhKX94aLI4CBRWqgul7+YjOUo21mmqM2pwFqSwqzXzpGqWsWd+rZJwj82T/uQ1+HueWfUvcq98943wjS5ycOWZeHv6RnwFxutrv7sq1xNT40wgnRRxIXA1fLp1ORLlnhv1rTG2+X0ZyM/L0Xsfpz3kYu0o2vzHAsS1XIMEMQUF3mDD8VsiLZFUgvrvGdlCi5SvLFTNIlfPyMh0fPAafz30iCpwqKwpZfrT9u3T6ysFAUU173I0xes6J9YXkLwr55DjI+TkGS2GV8bAaCUn5K1SDLNIpIS/JOd3TBtEY/72lj64/Up+7TB8sbY70gH/+5H1n7hd5vdXV6cNVl5F
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ab96246-af6e-425a-d976-08d792f16443
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 21:42:56.1577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ti7WbrpZqjmcmxzJvL8u6ZiyE1N3BgzcVRoUXWoc6Ka6DUcE2HZ/RFX4LGIOKyLiWe6XahEOnqdTfvqO5fi4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB5065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_134303_605249_9432C803 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEhpIEthenUsDQo+IA0KPiBTb3JyeSwg
SSBkaWQndCBoYXZlIGEgY2hhbmNlIHRvIHRyeSB5b3VyIHBhdGNoIHlldC4NCj4gSSB3aWxsIHVw
ZGF0ZSBtaW5lIG5leHQgd2Vlay4NCg0KT0suDQpGWUksIEknbSBwbGFubmluZyB0byByZWxhc2Ug
dGhlIG5leHQgdmVyc2lvbiBvZiBtYWtlZHVtcGZpbGUgYnkgdGhlIGVuZA0Kb2YgbmV4dCB3ZWVr
LiAgSXQgbmVlZHMgc29tZSByZWdyZXNzaW9uIHRlc3Rpbmcgd2l0aCBvbGQgdm1jb3JlcywgZXRj
Liwgc28NCkkgY2FuIGluY2x1ZGUgcGF0Y2hlcyBtZXJnZWQgYnkgdGhlIGJlZ2lubmluZyBvZiBu
ZXh0IHdlZWsgaW4gdGhlIHJlbGVhc2UuDQoNClRoYW5rcywNCkthenUNCg0KPiANCj4gVGhhbmtz
LA0KPiBNaWtoYWlsDQo+IA0KPiANCj4gT24gMDMuMDEuMjAyMCAyMTo1NSwgSEFHSU8gS0FaVUhJ
VE8o6JCp5bC+IOS4gOS7gSkgd3JvdGU6DQo+ID4gSGkgTGlhbmJvLCBNaWtoYWlsLA0KPiA+DQo+
ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+Pj4NCj4gPj4+PiBJbiBhZGRpdGlv
biwgdGhlIGFib3ZlIGNvZGUgY29uZnVzZWQgbWUsIGl0IHdpbGwgYWx3YXlzIHJldHVybiAwIG9u
IHMzOTAocGxlYXNlIHJlZmVyIHRvIG15IGxvZ3MpLg0KPiA+Pj4NCj4gPj4+IFRoZSBhaW0gb2Yg
Z2V0X2thc2xyX29mZnNldCgpIGhlcmUgaXMgb25seSBzZXR0aW5nIGluZm8tPmthc2xyX29mZnNl
dCB0byB0aGUgdmFsdWUNCj4gPj4+IGZyb20gdm1jb3JlaW5mbyBmb3IgdGhlIFNZTUJPTF9JTklU
KCkgbWFjcm8uDQo+ID4+PiAoZ2V0X2thc2xyX29mZnNldCgpIHJldHVybnMgdGhlIGthc2xyIG9m
ZnNldCBpbiB0aGUgcmVzb2x2ZV9jb25maWdfZW50cnkoKS4pDQo+ID4+Pg0KPiA+PiBUaGFua3Mg
Zm9yIHlvdXIgZXhwbGFuYXRpb24sIEthenUuDQo+ID4+DQo+ID4+PiBCdXQgeWVhaCwgdGhlIGdl
dF9rYXNscl9vZmZzZXQoU1lNQk9MKF9zdGV4dCkpIGlzIGNvbmZ1c2luZyBhbmQgbm90IGdvb2Qu
DQo+ID4+PiBQYXNzaW5nIDAgbWlnaHQgYmUgYSBiaXQgYmV0dGVyLi4/DQo+ID4+Pg0KPiA+PiBZ
ZXMsIGxvb2tzIGdvb2QgdG8gbWUuDQo+ID4NCj4gPiBPSywgSSBwdXNoZWQgYW4gYWRkaXRpb25h
bCBwYXRjaCBmaXhpbmcgaXQgdG8gdGhlIHRlc3QgYnJhbmNoOg0KPiA+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9rLWhhZ2lvL21ha2VkdW1wZmlsZS90cmVlL2FkZC1nZXRfa2FzbHJfb2Zmc2V0X2dlbmVy
YWwNCj4gPiBUaGFua3MgTGlhbmJvIGZvciBwb2ludGluZyBpdCBvdXQuDQo+ID4NCj4gPiBNaWto
YWlsLCBpZiB5b3UgdXBkYXRlIHlvdXIgcGF0Y2ggb24gdG9wIG9mIHRoZSB0cmVlIGFib3ZlLA0K
PiA+IEknbGwgbWVyZ2UgaXQgdXBzdHJlYW0uDQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gS2F6dQ0K
PiA+DQo+ID4gUC5TLiBNeSBlbWFpbCBhZGRyZXNzIGhhcyBiZWVuIGNoYW5nZWQgdG8gay1oYWdp
by1hYkBuZWMuY29tLg0KPiA+IFBsZWFzZSBzZW5kIGVtYWlsIHRvIHRoaXMgYWRkcmVzcyBpbiB0
aGUgZnV0dXJlLiBUaGFua3MuDQo+ID4gKFVnaCwgaXQgc2VlbXMgSSBjYW5ub3QgcmVtb3ZlIG15
IGthbmppIG5hbWUgaW4gdGhlIEZyb206IGZpZWxkLi4pDQo+ID4NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVj
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9rZXhlYwo=
