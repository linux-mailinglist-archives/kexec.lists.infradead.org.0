Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF77C72B38
	for <lists+kexec@lfdr.de>; Wed, 24 Jul 2019 11:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/krKYNrcJ8m04uVgAN31/zKh8fzA4Ly5h+3TdpygZE=; b=bLzxhjyNvMX6zk
	eVDkv0qBYiKN+4Zp3YN+3JtrknDhV0zHL3+vk/GxeyBcjACTaYfxUqX+vS4aG7Q9jVhKfX2LLUgVv
	n9/uvc7/PHTKR8F6UL0iIwmq+8/k2urAm+/hdE28Q94WF0ZLA8xyBIZvZsoxXhvqoXqYShzeeTUY3
	FWomx41PaplaYW9zqy3avUfMnmT0s+zE50ftJu/9My4g2TZEq3BhWtHrSM9Gbmq9QYanLwL0iI12r
	JNDz6Ca6njPtQ2DEyxZCPm4OPSjKDlfNOV+TH5rD7Mb7RmOmod7rnT+NTu+60/A1Dy2MXIrFDEswL
	747sRmbxHWtOmts7YJsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDLT-0008Vs-Jb; Wed, 24 Jul 2019 09:13:59 +0000
Received: from mail-eopbgr150092.outbound.protection.outlook.com
 ([40.107.15.92] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDLE-0008QU-Ap
 for kexec@lists.infradead.org; Wed, 24 Jul 2019 09:13:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxGywzelRaCu6yMot3iYvB810AwYgXwzhY7NEsoN1DCM94D8SxOz/S4amtjDCcCcI6Fnr6jLAKtFed9ePbwbIsZ58lhy6F3AovW1Lq728VtrP6VU4VxVLAcK5ZFkolkeHsXUvwbtBvExWl3NfQ8xtr7GHwNtb0W4wfOKLbJdl2srKgUdMRx+1bZDgaAN4R2RaKDEKDK1kEXkac4xc93Z8ObwBOBKfLTxDrlVDgrFBvN9mqcpd5RFJMIYMx9RNHUEzgL0e0HJFNU7x2WGq/Kxr/8j0Gh4kqOIiaul9AOQBTLwKKhPdCLoLpSa5J/loJ2AH0Hxntu3DKb4co6tdKfYWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uucqWGKXnFoihlXnMHkFx8ojlQzUBcRFKX8P97W04Hw=;
 b=JOTjMDcDJdoiGBOSGLQbqgT3p6L6qmk0uTq21uAKU75TePWordP+9F5OvyAtl7Qw7TPvOaDO7snmppTv7QCCPqUzi4Y2KoNdelQK/L/6goXZnbcm+JIRB32i3hYo/zaJ4GXRZaMoe65RJrOJMTi6CNznUA2VN0M6nSF0nkpx4QUtIcoPNXdOWUDaarDh2c+OFwGhkiADqqzDedAfrkhpGrSyM94sqrkRFkDkNWth0woh9O47Dp+8ztRUuwiuRigxtAWjD01eVjXvx2U1n0XW/tGRXFjZvQrSgrbxCNTzqYJAv5c/mnXXZRx4MTYEAWrVs17lU5tyOsP5uva9f9CRUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nedap.com;dmarc=pass action=none
 header.from=nedap.com;dkim=pass header.d=nedap.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nedap.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uucqWGKXnFoihlXnMHkFx8ojlQzUBcRFKX8P97W04Hw=;
 b=GW05uyyUiFQgFbXB/g33i5YDq+vtF0ugaO83Ms0fVzgW6YmU+45ZXXzch7ZwVvfmuB6TH7vA+/fFlzKzNjoh+dGCIrB3APduaNPFigLzX1BQE6JXRyD48PGGY2pacJKrrD+ltesO/NqXmM1r2HUxv3x5QcIvl0/av+gKrIrznZo=
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM (20.178.205.17) by
 VI1PR10MB3568.EURPRD10.PROD.OUTLOOK.COM (10.186.161.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Wed, 24 Jul 2019 09:13:40 +0000
Received: from VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd]) by VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::980:6c44:973d:befd%6]) with mapi id 15.20.2094.011; Wed, 24 Jul 2019
 09:13:40 +0000
From: Maikel Coenen <maikel.coenen@nedap.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: No compression technique of zImage/uImage detected - ARM
Thread-Topic: No compression technique of zImage/uImage detected - ARM
Thread-Index: AQHVQf97ymOykNqYQ0u4hEk/a9nQIqbZnbAA
Date: Wed, 24 Jul 2019 09:13:40 +0000
Message-ID: <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
References: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
In-Reply-To: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maikel.coenen@nedap.com; 
x-originating-ip: [87.249.123.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f39f2c37-55b8-457b-c9fe-08d710173806
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR10MB3568; 
x-ms-traffictypediagnostic: VI1PR10MB3568:
x-microsoft-antispam-prvs: <VI1PR10MB3568F34ADA59A9D9E9976B47EEC60@VI1PR10MB3568.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(376002)(136003)(39850400004)(396003)(189003)(199004)(305945005)(6916009)(6436002)(486006)(33656002)(14454004)(7736002)(71200400001)(71190400001)(5640700003)(6512007)(25786009)(6116002)(3846002)(6506007)(53936002)(2906002)(2351001)(476003)(11346002)(44832011)(446003)(2616005)(256004)(102836004)(186003)(478600001)(26005)(66066001)(36756003)(316002)(86362001)(6486002)(68736007)(66446008)(64756008)(66556008)(76116006)(91956017)(66476007)(8676002)(66946007)(8936002)(1730700003)(81166006)(81156014)(2501003)(5660300002)(76176011)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB3568;
 H:VI1PR10MB2863.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nedap.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mg9Ywjs96qsLKFHdMDP/melRMMVaQnR30XmHfZZ+paMp3V/tHYqlhiaaLZAcFjkHyb7zBgSAko50qp0lptBcW3af+0iMdF5IX60myhXbzq73fvMlBhEAPfi5hm75tOkEZPIheXtZAFxGl8HMHjIBIy51HzC6ihabD7mbvfSfA/K2thn9R5uHNgExhipE/W2AH0l0Kd76qY9lf/At9gQf0Tk/3RL868oKoaURhynTOLw+eRaHgRIjSB7DqxwPKOIvovMX4h9Uy4653YF/QYMA/F5UdmJCLc/BwBp7uMYbc++hu4VAg9QyyX3NXqhEtT78x4qc1tINsIEkAgoCnlklUsh/fW3VGJhBxaEEZVu6pSyJwFDSgR3kAIB4gdAIZgZfGr7kYv+bgCoyK0FB4AX1aaM8moPu8r4kFERAHWWVD4M=
Content-ID: <0F93B8FA895538498080D536706A8D26@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: nedap.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f39f2c37-55b8-457b-c9fe-08d710173806
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 09:13:40.5676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d21d161-0ae7-4a24-94cf-df0881e2fa96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maikel.coenen@nedap.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3568
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_021344_422643_D07D6DA8 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.92 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGksDQrCoA0KSSBoYXZlIG1ldCBhbiBpc3N1ZSBkdXJpbmcgbG9hZGluZyBhIG5ldyBrZXJuZWwg
d2l0aCBLZXhlYyBvbiBhbiBBUk12NSBTb0MuIFRoZSBrZXJuZWwgaXMgYSA0LjE5IHdpdGggR3pp
cCBjb21wcmVzc2lvbiBidXQgZHVyaW5nIGxvYWRpbmcgS2V4ZWMgZG9lcyBub3QgcmVjb2duaXpl
IHRoZSBjb21wcmVzc2lvbi4gDQrCoA0KSWYgSSBsb2FkIHRoZSBuZXcga2VybmVsIGFuZCBkdGIg
d2l0aDoNCsKgDQprZXhlYyAtbCAvYm9vdC96SW1hZ2UgLWQgLS1kdGI9L2Jvb3QvdS1ib290LmR0
Yg0KwqANClRoZSBvdXRwdXQgaXM6DQrCoA0KVHJ5IGd6aXAgZGVjb21wcmVzc2lvbi4NClRyeSBM
Wk1BIGRlY29tcHJlc3Npb24uDQpsem1hX2RlY29tcHJlc3NfZmlsZTogcmVhZCBvbiAvYm9vdC96
SW1hZ2Ugb2YgNjU1MzYgYnl0ZXMgZmFpbGVkDQprZXJuZWw6IDB4YjZhNjgwMDgga2VybmVsX3Np
emU6IDB4NDk0ZDMwDQpNRU1PUlkgUkFOR0VTDQowMDAwMDAwMDAwMDAwMDAwLTAwMDAwMDAwMGZm
ZmZmZmYgKDApDQp6SW1hZ2UgaGVhZGVyOiAweDAxNmYyODE4IDB4MDAwMDAwMDAgMHgwMDQ5NGQz
MA0KekltYWdlIHNpemUgMHg0OTRkMzAsIGZpbGUgc2l6ZSAweDQ5NGQzMA0Ka2V4ZWNfbG9hZDog
ZW50cnkgPSAweDgwMDAgZmxhZ3MgPSAweDI4MDAwMA0KbnJfc2VnbWVudHMgPSAyDQpzZWdtZW50
WzBdLmJ1ZsKgwqAgPSAweGI2YTY4MDA4DQpzZWdtZW50WzBdLmJ1ZnN6ID0gMHg0OTRkMzANCnNl
Z21lbnRbMF0ubWVtwqDCoCA9IDB4ODAwMA0Kc2VnbWVudFswXS5tZW1zeiA9IDB4NDk1MDAwDQpz
ZWdtZW50WzFdLmJ1ZsKgwqAgPSAweDFmY2YwNjANCnNlZ21lbnRbMV0uYnVmc3ogPSAweDI0NWIN
CnNlZ21lbnRbMV0ubWVtwqDCoCA9IDB4MTZmMjAwMA0Kc2VnbWVudFsxXS5tZW1zeiA9IDB4MzAw
MA0KwqANCkxvb2tpbmcgYXQgdGhlIGRlYnVnLCB0aGUgZnVuY3Rpb24gZ3pkaXJlY3QgcmV0dXJu
cyDigJwx4oCdIHdoaWNoIGluZGljYXRlcyB0aGUga2VybmVsIGNvbXByZXNzaW9uIGlzIG5vdCBv
ZiBnemlwIGJ1dCBJIGRlZmluaXRlbHkgdXNlIGd6aXAuIEkgYWxzbyB0ZXN0ZWQgaXQgd2l0aCBM
Wk1BIGNvbXByZXNzaW9uIGFuZCB1SW1hZ2UgaW5zdGVhZCBvZiB6SW1hZ2UgYnV0IGFsbCB3aXRo
IHRoZSBzYW1lIG91dGNvbWUuDQrCoA0KVG8gYmUgY29tcGxldGUsIEkgdXNlIEtleGVjLXRvb2xz
IDIuMC4xOSBhbmQgemxpYiAxLjIuMTEuDQrCoA0KRGlkIEkgaW1wbGVtZW50IHNvbWV0aGluZyB3
cm9uZyBvciBob3cgY2FuIEkgZGVidWcgdGhpcyBmdXJ0aGVyPw0KwqANCktpbmQgcmVnYXJkcywN
CsKgDQpNYWlrZWwgQ29lbmVuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
