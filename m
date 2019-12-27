Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E25812BB3E
	for <lists+kexec@lfdr.de>; Fri, 27 Dec 2019 22:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xgfmp9+19Hppz5TS0D5/kJuyJ7Rwe26rJ9Sh7xNaEJ8=; b=JNDXg3jhHsjrLI
	eOK3Qb45fzVbwjC/MmID9GZFvDzAafl+fWBuEO+ChrGzrQUkw0mo8qnrLYe7LPdGXpluFYItQc7BI
	VxGuK5JXfz3elAxXBH9BGdZWaflFdYfn7o6dTzkp5qnoKU0Z0Pl7gyh1ASo0E5URIiNsAjA0gmM2M
	ikdUnWlxUtv4agzpz4TktJR3HejQrjhOEr19fNR/ZNId+1yq9TYCHbCJiCjErEddWrYBguu91jZPA
	Doh/wDcGMHJ/IBl2BsQvtSZS7FD+qFO48+eXPMc0i1cZoXoZS5eqY0bT4At3kciYdmmMaAbw+Et4O
	02k88h63Wa204JvZL2Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikxAs-0004RB-39; Fri, 27 Dec 2019 21:29:34 +0000
Received: from mail-eopbgr1300058.outbound.protection.outlook.com
 ([40.107.130.58] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikxAn-0004QY-Iv
 for kexec@lists.infradead.org; Fri, 27 Dec 2019 21:29:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUe+khXrpG7fcDrScKcd/5s7C4wYWG0Nb5/0KgF5zNmVLpgH+L+crftYQN1FomIG4X96IC7CQdXjygiYQPcnYECBNGEHt1SrxVPT1bxPsRwQURPsjVh8RG1bFtETIBrhUnIKZCQ0IF3IRNIPkmlPKNfxUnHs7ISI6koEqNCG0w8NXQEkXijbZRvnP+/uBCNqC/NTRWWIqmfwFePDvZyvI36CcC+47QC1xh1XifLcnsVQYHbxKRZr4jK0iGyQ8qc/1KcpFhq//cZX/R5EUn7aN+lNKOiGCfxldLK4iPdbgx8PYTVLf9OLJqVgdmby0dDtFEX3xQDUvBzpv7mGKrfPvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U9JJDCGRK16u7f3BUWzNlxmitYKWJ5SLltC6nGDEX2w=;
 b=Xf7SuzIhpUxYqI27Y5LD4G1b+I+vZyBmHtnRLL4hPh2rCQmejsS/W5mzTHxRnBoXEfuAHJRFyuPjZQzvwl4vikIU4Z02dkuK0tLVBN3PWzQbb9KrnIp1IWKYi2K+u2Tynt9XiKHDp5eqPPYHBAjXZJA0lElYQO/7dGS3FOUUFVyXGG0GqG6uj/ispwJrSO/y7tuQ3pjwiQAx0ZAFeD/KfwJUIufqtbfMAiIMGWfZ+CNxLh4nBgckW+023YJvMHDh+CGzDFS0X6+029oiQPhhZRIaSmvvQzH36wHbZEW/cgbmDcks1Q+EoqP1/9Lr8x+GhtVbgJdZOFCVoidZRNcqpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U9JJDCGRK16u7f3BUWzNlxmitYKWJ5SLltC6nGDEX2w=;
 b=C589AY1kjgkdkE7CL8wNRYTIx7xv2ccM46/XLzTBA8m2diwIFfEGUM+IRfAK7IETCid3SN48NNKS6Gn1TMGRTJmrkgEjvi/32sj4NGhZdcyMA0ER/z3aQFtwHBEecZwSpUsqr7L8EX0NdAVUWgNs2owe66Iy04ZO4x2yRpumRnc=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB4316.jpnprd01.prod.outlook.com (20.179.168.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Fri, 27 Dec 2019 21:29:23 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::f580:4b2c:c69c:c28c]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::f580:4b2c:c69c:c28c%5]) with mapi id 15.20.2581.007; Fri, 27 Dec 2019
 21:29:23 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: lijiang <lijiang@redhat.com>
Subject: RE: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Topic: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Index: AQHVu539YdIeeoZhrkK9VP733OiLmafLzJ4AgAJPLKA=
Date: Fri, 27 Dec 2019 21:29:23 +0000
Message-ID: <TY2PR01MB5210EBE26FC1603B3E7FF491DD2A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
 <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03598540@BPXM09GP.gisp.nec.co.jp>
 <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
 <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
In-Reply-To: <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7bdfb65-40fb-4799-036e-08d78b13d76f
x-ms-traffictypediagnostic: TY2PR01MB4316:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB431690E20FC468D1AE285056DD2A0@TY2PR01MB4316.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0264FEA5C3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(39860400002)(376002)(346002)(189003)(199004)(13464003)(66476007)(55016002)(478600001)(5660300002)(66946007)(81156014)(8936002)(81166006)(8676002)(9686003)(76116006)(66556008)(64756008)(966005)(66446008)(19273905006)(85182001)(7696005)(52536014)(86362001)(33656002)(54906003)(2906002)(53546011)(71200400001)(316002)(26005)(4326008)(6916009)(6506007)(186003)(563064011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB4316;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5CY408jDq1IGF+8oSQrIBIVQ0raBTsva8vFLOS+M/6v6qQkWeQSLkrL/lm5oq6dYnqune3Y7h8HjKnU84n0J3okMCm6ov/1d0/HluLyjUMJ+knXz9Q7z43b3XHcy8pM4j+XDkMojANtpzjRc8pV7r0hS1+NWv57aoxXzsKqfoLXPRUI13mqKOyWF046Pc54NnODgS1brgacaba/RGA4eT8k2Lm/rsbUlvgQbD8Uul2RnZ/CHG6BeI/FVx+blYjUMyEMJ71gNApO9AndJnsSyumjcUtdyDUt+mLJ56DL5+h6Jg8oiB59OGvhevggVwfoH6fsko1qY7QzYZp8MBzRMPDkliaSmzbJgXYOMtEpFS/nkgjmiGVqf6b6H1pcp8PEH+VRa7YdwVr3LfZYhzozu2X84xkuoTLlJMV0CKBiNRMp4ISzRdUi18JwgJUJfFpje6um41bcbQ8Ce8ZvoCEREgXRysREJ+eE/nDfMKOtnW/jME31YonRpTax47p7eBSp67EIOknVDt41xv10XUQG+ff/GR50qQ/KL6O598rOVEU7QoEs+XvyggRcBWxr0R26/
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7bdfb65-40fb-4799-036e-08d78b13d76f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2019 21:29:23.0651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2d/qU85Zkrg9s6k4Nts3S07UbQ8zc7EBLtUec6Bqind1Z2ho2o3a3tq8QMvWEjxvE4ifA7UbQVnLy3gFl6ivg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB4316
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_132929_842215_40209A8C 
X-CRM114-Status: GOOD (  35.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.58 listed in list.dnswl.org]
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
Cc: Mikhail Zaslonko <zaslonko@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgTGlhbmJvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IOWcqCAyMDE55bm0
MTLmnIgyNuaXpSAxMTozOCwgbGlqaWFuZyDlhpnpgZM6DQo+ID4gSGksIEthenUgYW5kIE1pa2hh
aWwsDQo+ID4NCj4gPj4gSGkgTWlraGFpbCwNCj4gPj4NCj4gPj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+ID4+PiBIaSwNCj4gPj4+DQo+ID4+PiBPbiAxMi4xMi4yMDE5IDE3OjEyLCBL
YXp1aGl0byBIYWdpbyB3cm90ZToNCj4gPj4+PiBIaSBNaWtoYWlsLA0KPiA+Pj4+DQo+ID4+Pj4+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+Pj4+IEhlbGxvIEthenUsDQo+ID4+Pj4+
DQo+ID4+Pj4+IEkgdGhpbmsgd2UgY2FuIHRyeSB0byBnZW5lcmFsaXplIHRoZSBrYXNsciBvZmZz
ZXQgZXh0cmFjdGlvbi4NCj4gPj4+Pj4gSSB3b24ndCBzcGVhayBmb3Igb3RoZXIgYXJjaGl0ZWN0
dXJlcywgYnV0IGZvciBzMzkwIHRoYXQgZ2V0X2thc2xyX29mZnNldF9hcm02NCgpDQo+ID4+Pj4+
IHNob3VsZCB3b3JrIGZpbmUuIFRoZSBvbmx5IGNvbmNlcm4gb2YgbWluZSBpcyB0aGlzIFRPRE8g
c3RhdGVtZW50Og0KPiA+Pj4+Pg0KPiA+Pj4+PiBpZiAoX3RleHQgPD0gdmFkZHIgJiYgdmFkZHIg
PD0gX2VuZCkgew0KPiA+Pj4+PiAJREVCVUdfTVNHKCJpbmZvLT5rYXNscl9vZmZzZXQ6ICVseFxu
IiwgaW5mby0+a2FzbHJfb2Zmc2V0KTsNCj4gPj4+Pj4gCXJldHVybiBpbmZvLT5rYXNscl9vZmZz
ZXQ7DQo+ID4+Pj4+IAl9IGVsc2Ugew0KPiA+Pj4+PiAJLyoNCj4gPj4+Pj4gCSogVE9ETzogd2Ug
bmVlZCB0byBjaGVjayBpZiBpdCBpcyB2bWFsbG9jL3ZtbWVtbWFwL21vZHVsZQ0KPiA+Pj4+PiAJ
KiBhZGRyZXNzLCB3ZSB3aWxsIGhhdmUgZGlmZmVyZW50IG9mZnNldA0KPiA+Pj4+PiAJKi8NCj4g
Pj4+Pj4gCXJldHVybiAwOw0KPiA+Pj4+PiB9DQo+ID4+Pj4+DQo+ID4+Pj4+IENvdWxkIHlvdSBl
eHBsYWluIHRoaXMgb25lPw0KPiA+Pj4+DQo+ID4+Pj4gUHJvYmFibHkgaXQgd2FzIGNvbnNpZGVy
ZWQgdGhhdCB0aGUgY2hlY2sgd291bGQgYmUgbmVlZGVkIHRvIHN1cHBvcnQNCj4gPj4+PiB0aGUg
d2hvbGUgS0FTTFIgYmVoYXZpb3Igd2hlbiBnZXRfa2FzbHJfb2Zmc2V0X3g4Nl82NCgpIHdhcyB3
cml0dGVuDQo+ID4+Pj4gb3JpZ2luYWxseS4NCj4gPj4+Pg0KPiA+Pj4+IEJ1dCBpbiB0aGUgY3Vy
cmVudCBtYWtlZHVtcGZpbGUgZm9yIHg4Nl82NCBhbmQgYXJtNjQgc3VwcG9ydGluZyBLQVNMUiwN
Cj4gPj4+PiB0aGUgb2Zmc2V0IHdlIG5lZWQgaXMgdGhlIG9uZSBmb3Igc3ltYm9sIGFkZHJlc3Nl
cyBpbiB2bWxpbnV4IG9ubHkuDQo+ID4+Pj4gQXMgSSBzYWlkIGJlbG93LCBtb2R1bGUgc3ltYm9s
IGFkZHJlc3NlcyBhcmUgcmV0cmlldmVkIGZyb20gdm1jb3JlLg0KPiA+Pj4+IE90aGVyIGFkZHJl
c3NlcyBzaG91bGQgbm90IGJlIHBhc3NlZCB0byB0aGUgZnVuY3Rpb24gZm9yIG5vdywgYXMgZmFy
DQo+ID4+Pj4gYXMgSSBrbm93Lg0KPiA+Pj4+DQo+ID4+Pj4gU28gSSB0aGluayB0aGUgVE9ETyBj
b21tZW50IGlzIGNvbmZ1c2luZywgYW5kIGl0IHdvdWxkIGJlIGJldHRlciB0bw0KPiA+Pj4+IHJl
bW92ZSBpdCBvciBjaGFuZ2UgaXQgdG8gc29tZXRoaW5nIGxpa2U6DQo+ID4+Pj4gLyoNCj4gPj4+
PiAgKiBSZXR1cm5zIDAgaWYgdmFkZHIgZG9lcyBub3QgbmVlZCB0aGUgb2Zmc2V0IHRvIGJlIGFk
ZGVkLA0KPiA+Pj4+ICAqIGUuZy4gZm9yIG1vZHVsZSBhZGRyZXNzLg0KPiA+Pj4+ICAqLw0KPiA+
Pj4+DQo+ID4+Pj4gQnV0IGlmIHMzOTAgdXNlcyBnZXRfa2FzbHJfb2Zmc2V0KCkgaW4gaXRzIGFy
Y2gtc3BlY2lmaWMgY29kZSB0bw0KPiA+Pj4+IGFkanVzdCBhZGRyZXNzZXMgb3RoZXIgdGhhbiBr
ZXJuZWwgdGV4dCBhZGRyZXNzLCB3ZSBtaWdodCBuZWVkIHRvDQo+ID4+Pj4gbW9kaWZ5IGl0IGZv
ciBzMzkwLCBub3QgZ2VuZXJhbGl6ZSBpdC4NCj4gPj4+DQo+ID4+PiBDdXJyZW50bHksIHMzOTAg
ZG9lc24ndCB1c2UgZ2V0X2thc2xyX29mZnNldCgpIGluIGl0cyBhcmNoLXNwZWNpZmljDQo+ID4+
PiBjb2RlLg0KPiA+Pg0KPiA+PiBPSywgSSBwdXNoZWQgYSBwYXRjaCB0aGF0IGdlbmVyYWxpemVz
IGl0IHRvIG15IHRlc3QgcmVwb3NpdG9yeS4NCj4gPj4gQ291bGQgeW91IGVuYWJsZSBzMzkwIHRv
IHVzZSBpdCBhbmQgdGVzdD8NCj4gPj4gaHR0cHM6Ly9naXRodWIuY29tL2staGFnaW8vbWFrZWR1
bXBmaWxlL3RyZWUvYWRkLWdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbA0KPiA+Pg0KPiA+DQo+ID4g
SSBlbmFibGVkIGl0IG9uIHMzOTAgYXMgYmVsb3cgYW5kIHRlc3RlZCwgaXQgd29ya2VkLg0KDQpU
aGFuayB5b3UgZm9yIHRlc3RpbmcuDQoNCj4gPg0KPiA+IEBAIC0xMDc1LDcgKzEwNzUsNyBAQCBp
bnQgaXNfaW9tZW1fcGh5c19hZGRyX3MzOTB4KHVuc2lnbmVkIGxvbmcgYWRkcik7DQo+ID4gICNk
ZWZpbmUgZ2V0X3BoeXNfYmFzZSgpICAgICAgICAgICAgICAgIHN0dWJfdHJ1ZSgpDQo+ID4gICNk
ZWZpbmUgZ2V0X21hY2hkZXBfaW5mbygpICAgICBnZXRfbWFjaGRlcF9pbmZvX3MzOTB4KCkNCj4g
PiAgI2RlZmluZSBnZXRfdmVyc2lvbmRlcF9pbmZvKCkgIHN0dWJfdHJ1ZSgpDQo+ID4gLSNkZWZp
bmUgZ2V0X2thc2xyX29mZnNldChYKSAgICBzdHViX2ZhbHNlKCkNCj4gPiArI2RlZmluZSBnZXRf
a2FzbHJfb2Zmc2V0KFgpICAgIGdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbChYKQ0KPiA+ICAjZGVm
aW5lIHZhZGRyX3RvX3BhZGRyKFgpICAgICAgdmFkZHJfdG9fcGFkZHJfczM5MHgoWCkNCj4gPg0K
PiA+IEJ1dCwgdGhlcmUgaXMgc3RpbGwgYSBwcm9ibGVtIHRoYXQgbmVlZHMgdG8gYmUgaW1wcm92
ZWQuIEluIHRoZSBmaW5kX2thc2xyX29mZnNldHMoKSwNCj4gPiB0aGUgdmFsdWUgb2YgU1lNQk9M
KF9zdGV4dCkgaXMgYWx3YXlzIDAoemVybykgYW5kIGl0IGlzIHBhc3NlZCB0byB0aGUgZ2V0X2th
c2xyX29mZnNldCgpLg0KPiA+IEZvciB0aGUgZm9sbG93aW5nIGNvZGUgaW4gdGhlIGdldF9rYXNs
cl9vZmZzZXRfZ2VuZXJhbCgpLCBpdCBkb2VzIG5vdCB3b3JrIGFzIGV4cGVjdGVkLg0KPiA+IC4u
Lg0KPiA+IAlpZiAoX3RleHQgPD0gdmFkZHIgJiYgdmFkZHIgPD0gX2VuZCkNCj4gPiAJCXJldHVy
biBpbmZvLT5rYXNscl9vZmZzZXQ7DQo+ID4gCWVsc2UNCj4gPiAJCXJldHVybiAwOw0KDQpJIGRv
bid0IGtub3cgd2h5IHRoZSBTWU1CT0woX3N0ZXh0KSBpcyBwYXNzZWQgdG8gdGhlIGdldF9rYXNs
cl9vZmZzZXQoKSB0aGVyZSwgYnV0DQpzaW5jZSB0aGUgcmV0dXJuIHZhbHVlIG9mIGdldF9rYXNs
cl9vZmZzZXQoKSBpcyBub3QgdXNlZCBpbiB0aGUgZmluZF9rYXNscl9vZmZzZXRzKCksDQppdCdz
IG1lYW5pbmdsZXNzIGFuZCBub3QgaGFybWZ1bC4gU28gaXQgaXMgbm90IHdvcnRoIGRvaW5nIFJF
QURfU1lNQk9MKF9zdGV4dCkgdGhlcmUNCmZvciBub3cuDQoNCj4gDQo+IEluIGFkZGl0aW9uLCB0
aGUgYWJvdmUgY29kZSBjb25mdXNlZCBtZSwgaXQgd2lsbCBhbHdheXMgcmV0dXJuIDAgb24gczM5
MChwbGVhc2UgcmVmZXIgdG8gbXkgbG9ncykuDQoNClRoZSBhaW0gb2YgZ2V0X2thc2xyX29mZnNl
dCgpIGhlcmUgaXMgb25seSBzZXR0aW5nIGluZm8tPmthc2xyX29mZnNldCB0byB0aGUgdmFsdWUN
CmZyb20gdm1jb3JlaW5mbyBmb3IgdGhlIFNZTUJPTF9JTklUKCkgbWFjcm8uDQooZ2V0X2thc2xy
X29mZnNldCgpIHJldHVybnMgdGhlIGthc2xyIG9mZnNldCBpbiB0aGUgcmVzb2x2ZV9jb25maWdf
ZW50cnkoKS4pDQoNCkJ1dCB5ZWFoLCB0aGUgZ2V0X2thc2xyX29mZnNldChTWU1CT0woX3N0ZXh0
KSkgaXMgY29uZnVzaW5nIGFuZCBub3QgZ29vZC4NClBhc3NpbmcgMCBtaWdodCBiZSBhIGJpdCBi
ZXR0ZXIuLj8NCg0KVGhhbmtzLA0KS2F6dQ0KDQo+IA0KPiBUaGFua3MuDQo+IA0KPiA+IC4uLg0K
PiA+IEhlcmUgaXMgbXkgbG9nOg0KPiA+IGdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbDogaW5mby0+
a2FzbHJfb2Zmc2V0OiA2N2ViYzAwMCwgX3RleHQ6MTAwMDAwLCBfZW5kOjEwYmEwMDAsIHZhZGRy
OjANCj4gPg0KPiA+IEFmdGVyIGFwcGxpZWQgdGhlIGZvbGxvd2luZyBwYXRjaCwgZ290IHRoZSBl
eHBlY3RlZCByZXN1bHQuDQo+ID4gIGludA0KPiA+ICBmaW5kX2thc2xyX29mZnNldHMoKQ0KPiA+
ICB7DQo+ID4gQEAgLTM5NzMsNiArNDA0MiwxMSBAQCBmaW5kX2thc2xyX29mZnNldHMoKQ0KPiA+
ICAgICAgICAgICogY2FsbGVkIHRoaXMgZnVuY3Rpb24gYmV0d2VlbiBvcGVuX3ZtY29yZWluZm8o
KSBhbmQNCj4gPiAgICAgICAgICAqIGNsb3NlX3ZtY29yZWluZm8oKQ0KPiA+ICAgICAgICAgICov
DQo+ID4gKyAgICAgICBSRUFEX1NZTUJPTCgiX3N0ZXh0IiwgX3N0ZXh0KTsNCj4gPiArICAgICAg
IGlmIChTWU1CT0woX3N0ZXh0KSA9PSBOT1RfRk9VTkRfU1lNQk9MKSB7DQo+ID4gKyAgICAgICAg
ICAgICAgICBFUlJNU0coIkNhbid0IGdldCB0aGUgc3ltYm9sIG9mIF9zdGV4dC5cbiIpOw0KPiA+
ICsgICAgICAgICAgICAgICAgZ290byBvdXQ7DQo+ID4gKyAgICAgICB9DQo+ID4gICAgICAgICBn
ZXRfa2FzbHJfb2Zmc2V0KFNZTUJPTChfc3RleHQpKTsNCj4gPg0KPiA+IEhlcmUgaXMgbXkgbG9n
Og0KPiA+IGdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbDogaW5mby0+a2FzbHJfb2Zmc2V0OiA2N2Vi
YzAwMCwgX3RleHQ6MTAwMDAwLCBfZW5kOjEwYmEwMDAsIHZhZGRyOjY3ZmJjMDAwDQo+ID4NCj4g
PiBCYXNpY2FsbHksIGJlZm9yZSB1c2luZyB0aGUgdmFsdWUgb2YgU1lNQk9MKF9zdGV4dCksIG5l
ZWQgdG8gZW5zdXJlIHRoYXQgdGhlIFNZTUJPTChfc3RleHQpIGlzIHBhcnNlZA0KPiA+IGNvcnJl
Y3RseS4NCj4gPg0KPiA+IFRoYW5rcy4NCj4gPg0KPiA+PiBUaGFua3MsDQo+ID4+IEthenUNCj4g
Pj4NCj4gPj4+DQo+ID4+Pj4NCj4gPj4+PiBUaGFua3MsDQo+ID4+Pj4gS2F6dQ0KPiA+Pj4+DQo+
ID4+Pj4+DQo+ID4+Pj4+IFRoYW5rcywNCj4gPj4+Pj4gTWlraGFpbA0KPiA+Pj4+Pg0KPiA+Pj4+
PiBPbiAwOS4xMi4yMDE5IDIzOjAyLCBLYXp1aGl0byBIYWdpbyB3cm90ZToNCj4gPj4+Pj4+IEhp
IE1pa2hhaWwsDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gU29ycnkgZm9yIGxhdGUgcmVwbHkuDQo+ID4+
Pj4+Pg0KPiA+Pj4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+Pj4+Pj4gU2lu
Y2Uga2VybmVsIHY1LjIgS0FTTFIgaXMgc3VwcG9ydGVkIG9uIHMzOTAuIEluIG1ha2VkdW1wZmls
ZSBob3dldmVyIG5vDQo+ID4+Pj4+Pj4gc3VwcG9ydCBoYXMgYmVlbiBhZGRlZCB5ZXQuIFRoaXMg
cGF0Y2ggYWRkcyB0aGUgYXJjaCBzcGVjaWZpYyBmdW5jdGlvbg0KPiA+Pj4+Pj4+IGdldF9rYXNs
cl9vZmZzZXQoKSBmb3IgczM5MHguDQo+ID4+Pj4+Pj4gU2luY2UgdGhlIHZhbHVlcyBpbiB2bWNv
cmVpbmZvIGFyZSBhbHJlYWR5IHJlbG9jYXRlZCwgdGhlIHBhdGNoIGlzDQo+ID4+Pj4+Pj4gbWFp
bmx5IHJlbGV2YW50IGZvciB2bWxpbnV4IHByb2Nlc3NpbmcgKC14IG9wdGlvbikuDQo+ID4+Pj4+
Pg0KPiA+Pj4+Pj4gSW4gdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgbWFrZWR1bXBmaWxl
LCB0aGUgZ2V0X2thc2xyX29mZnNldCh2YWRkcikNCj4gPj4+Pj4+IGlzIHN1cHBvc2VkIHRvIHJl
dHVybiB0aGUgS0FTTFIgb2Zmc2V0IG9ubHkgd2hlbiB0aGUgb2Zmc2V0IGlzIG5lZWRlZCB0bw0K
PiA+Pj4+Pj4gYWRkIHRvIHRoZSB2YWRkci4gIFNvIGdlbmVyYWxseSBzeW1ib2xzIGZyb20ga2Vy
bmVsICh2bWxpbnV4KSBuZWVkIGl0LCBidXQNCj4gPj4+Pj4+IHN5bWJvbHMgZnJvbSBtb2R1bGVz
IGFyZSByZXNvbHZlZCBkeW5hbWljYWxseSBhbmQgZG9uJ3QgbmVlZCB0aGUgb2Zmc2V0Lg0KPiA+
Pj4+PiBcPg0KPiA+Pj4+Pj4gVGhpcyBwYXRjaCBhbHdheXMgcmV0dXJucyB0aGUgb2Zmc2V0IGlm
IGFueSwgYXMgYSByZXN1bHQsIEkgZ3Vlc3MgdGhpcyBwYXRjaA0KPiA+Pj4+Pj4gd2lsbCBub3Qg
d29yayBhcyBleHBlY3RlZCB3aXRoIG1vZHVsZSBzeW1ib2xzIGluIGZpbHRlciBjb25maWcgZmls
ZS4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBTby4uLiBIb3cgYWJvdXQgbWFraW5nIGdldF9rYXNscl9v
ZmZzZXRfYXJtNjQoKSBnZW5lcmFsIGZvciBvdGhlciBhcmNocw0KPiA+Pj4+Pj4gKGdldF9rYXNs
cl9vZmZzZXRfZ2VuZXJhbCgpIG9yIHNvbWV0aGluZyksIHRoZW4gdXNpbmcgaXQgYWxzbyBmb3Ig
czM5MD8NCj4gPj4+Pj4+IElmIE9LLCBJIGNhbiBkbyB0aGF0IGdlbmVyYWxpemF0aW9uLg0KPiA+
Pj4+Pj4NCj4gPj4+Pj4+IFRoYW5rcywNCj4gPj4+Pj4+IEthenUNCj4gPj4+Pj4+DQo+ID4+Pj4+
Pj4NCj4gPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFJ1ZG8gPHBydWRvQGxpbnV4Lmli
bS5jb20+DQo+ID4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTWlraGFpbCBaYXNsb25rbyA8emFzbG9u
a29AbGludXguaWJtLmNvbT4NCj4gPj4+Pj4+PiAtLS0NCj4gPj4+Pj4+PiAgYXJjaC9zMzkweC5j
ICAgfCAzMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+Pj4+Pj4+ICBtYWtl
ZHVtcGZpbGUuaCB8ICAzICsrLQ0KPiA+Pj4+Pj4+ICAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4+Pj4+Pg0KPiA+Pj4+Pj4+IGRpZmYgLS1naXQg
YS9hcmNoL3MzOTB4LmMgYi9hcmNoL3MzOTB4LmMNCj4gPj4+Pj4+PiBpbmRleCBiZjlkNThlLi44
OTJkZjE0IDEwMDY0NA0KPiA+Pj4+Pj4+IC0tLSBhL2FyY2gvczM5MHguYw0KPiA+Pj4+Pj4+ICsr
KyBiL2FyY2gvczM5MHguYw0KPiA+Pj4+Pj4+IEBAIC0xMjIsNiArMTIyLDM4IEBAIGdldF9tYWNo
ZGVwX2luZm9fczM5MHgodm9pZCkNCj4gPj4+Pj4+PiAgCXJldHVybiBUUlVFOw0KPiA+Pj4+Pj4+
ICB9DQo+ID4+Pj4+Pj4NCj4gPj4+Pj4+PiArdW5zaWduZWQgbG9uZw0KPiA+Pj4+Pj4+ICtnZXRf
a2FzbHJfb2Zmc2V0X3MzOTB4KHVuc2lnbmVkIGxvbmcgdmFkZHIpDQo+ID4+Pj4+Pj4gK3sNCj4g
Pj4+Pj4+PiArCXVuc2lnbmVkIGludCBpOw0KPiA+Pj4+Pj4+ICsJY2hhciBidWZbQlVGU0laRV9G
R0VUU10sICplbmRwOw0KPiA+Pj4+Pj4+ICsNCj4gPj4+Pj4+PiArCWlmICghaW5mby0+ZmlsZV92
bWNvcmVpbmZvKQ0KPiA+Pj4+Pj4+ICsJCXJldHVybiBGQUxTRTsNCj4gPj4+Pj4+PiArDQo+ID4+
Pj4+Pj4gKwlpZiAoZnNlZWsoaW5mby0+ZmlsZV92bWNvcmVpbmZvLCAwLCBTRUVLX1NFVCkgPCAw
KSB7DQo+ID4+Pj4+Pj4gKwkJRVJSTVNHKCJDYW4ndCBzZWVrIHRoZSB2bWNvcmVpbmZvIGZpbGUo
JXMpLiAlc1xuIiwNCj4gPj4+Pj4+PiArCQkgICAgICAgaW5mby0+bmFtZV92bWNvcmVpbmZvLCBz
dHJlcnJvcihlcnJubykpOw0KPiA+Pj4+Pj4+ICsJCXJldHVybiBGQUxTRTsNCj4gPj4+Pj4+PiAr
CX0NCj4gPj4+Pj4+PiArDQo+ID4+Pj4+Pj4gKwl3aGlsZSAoZmdldHMoYnVmLCBCVUZTSVpFX0ZH
RVRTLCBpbmZvLT5maWxlX3ZtY29yZWluZm8pKSB7DQo+ID4+Pj4+Pj4gKwkJaSA9IHN0cmxlbihi
dWYpOw0KPiA+Pj4+Pj4+ICsJCWlmICghaSkNCj4gPj4+Pj4+PiArCQkJYnJlYWs7DQo+ID4+Pj4+
Pj4gKwkJaWYgKGJ1ZltpIC0gMV0gPT0gJ1xuJykNCj4gPj4+Pj4+PiArCQkJYnVmW2kgLSAxXSA9
ICdcMCc7DQo+ID4+Pj4+Pj4gKwkJaWYgKHN0cm5jbXAoYnVmLCBTVFJfS0VSTkVMT0ZGU0VULA0K
PiA+Pj4+Pj4+ICsJCQkgICAgc3RybGVuKFNUUl9LRVJORUxPRkZTRVQpKSA9PSAwKSB7DQo+ID4+
Pj4+Pj4gKwkJCWluZm8tPmthc2xyX29mZnNldCA9DQo+ID4+Pj4+Pj4gKwkJCQlzdHJ0b3VsKGJ1
ZiArIHN0cmxlbihTVFJfS0VSTkVMT0ZGU0VUKSwgJmVuZHAsIDE2KTsNCj4gPj4+Pj4+PiArCQkJ
REVCVUdfTVNHKCJpbmZvLT5rYXNscl9vZmZzZXQ6ICVseFxuIiwgaW5mby0+a2FzbHJfb2Zmc2V0
KTsNCj4gPj4+Pj4+PiArCQl9DQo+ID4+Pj4+Pj4gKwl9DQo+ID4+Pj4+Pj4gKw0KPiA+Pj4+Pj4+
ICsJcmV0dXJuIGluZm8tPmthc2xyX29mZnNldDsNCj4gPj4+Pj4+PiArfQ0KPiA+Pj4+Pj4+ICsN
Cj4gPj4+Pj4+PiAgc3RhdGljIGludA0KPiA+Pj4+Pj4+ICBpc192bWFsbG9jX2FkZHJfczM5MHgo
dW5zaWduZWQgbG9uZyB2YWRkcikNCj4gPj4+Pj4+PiAgew0KPiA+Pj4+Pj4+IGRpZmYgLS1naXQg
YS9tYWtlZHVtcGZpbGUuaCBiL21ha2VkdW1wZmlsZS5oDQo+ID4+Pj4+Pj4gaW5kZXggYWMxMWU5
MC4uMjZmNjI0NyAxMDA2NDQNCj4gPj4+Pj4+PiAtLS0gYS9tYWtlZHVtcGZpbGUuaA0KPiA+Pj4+
Pj4+ICsrKyBiL21ha2VkdW1wZmlsZS5oDQo+ID4+Pj4+Pj4gQEAgLTEwNzEsMTEgKzEwNzEsMTIg
QEAgdW5zaWduZWQgbG9uZyBsb25nIHZhZGRyX3RvX3BhZGRyX3BwYyh1bnNpZ25lZCBsb25nIHZh
ZGRyKTsNCj4gPj4+Pj4+PiAgaW50IGdldF9tYWNoZGVwX2luZm9fczM5MHgodm9pZCk7DQo+ID4+
Pj4+Pj4gIHVuc2lnbmVkIGxvbmcgbG9uZyB2YWRkcl90b19wYWRkcl9zMzkweCh1bnNpZ25lZCBs
b25nIHZhZGRyKTsNCj4gPj4+Pj4+PiAgaW50IGlzX2lvbWVtX3BoeXNfYWRkcl9zMzkweCh1bnNp
Z25lZCBsb25nIGFkZHIpOw0KPiA+Pj4+Pj4+ICt1bnNpZ25lZCBsb25nIGdldF9rYXNscl9vZmZz
ZXRfczM5MHgodW5zaWduZWQgbG9uZyB2YWRkcik7DQo+ID4+Pj4+Pj4gICNkZWZpbmUgZmluZF92
bWVtbWFwKCkJCXN0dWJfZmFsc2UoKQ0KPiA+Pj4+Pj4+ICAjZGVmaW5lIGdldF9waHlzX2Jhc2Uo
KQkJc3R1Yl90cnVlKCkNCj4gPj4+Pj4+PiAgI2RlZmluZSBnZXRfbWFjaGRlcF9pbmZvKCkJZ2V0
X21hY2hkZXBfaW5mb19zMzkweCgpDQo+ID4+Pj4+Pj4gICNkZWZpbmUgZ2V0X3ZlcnNpb25kZXBf
aW5mbygpCXN0dWJfdHJ1ZSgpDQo+ID4+Pj4+Pj4gLSNkZWZpbmUgZ2V0X2thc2xyX29mZnNldChY
KQlzdHViX2ZhbHNlKCkNCj4gPj4+Pj4+PiArI2RlZmluZSBnZXRfa2FzbHJfb2Zmc2V0KFgpCWdl
dF9rYXNscl9vZmZzZXRfczM5MHgoWCkNCj4gPj4+Pj4+PiAgI2RlZmluZSB2YWRkcl90b19wYWRk
cihYKQl2YWRkcl90b19wYWRkcl9zMzkweChYKQ0KPiA+Pj4+Pj4+ICAjZGVmaW5lIHBhZGRyX3Rv
X3ZhZGRyKFgpCXBhZGRyX3RvX3ZhZGRyX2dlbmVyYWwoWCkNCj4gPj4+Pj4+PiAgI2RlZmluZSBp
c19waHlzX2FkZHIoWCkJCWlzX2lvbWVtX3BoeXNfYWRkcl9zMzkweChYKQ0KPiA+Pj4+Pj4+IC0t
DQo+ID4+Pj4+Pj4gMi4xNy4xDQo+ID4+Pj4+Pj4NCj4gPj4+Pj4+DQo+ID4+Pj4+Pg0KPiA+Pj4+
DQo+ID4+Pj4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gPj4ga2V4ZWMgbWFpbGluZyBsaXN0DQo+ID4+IGtl
eGVjQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9rZXhlYw0KPiA+Pg0KPiA+DQo+ID4NCj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IGtleGVjIG1haWxpbmcgbGlz
dA0KPiA+IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjDQo+ID4NCj4gDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhl
Y0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8va2V4ZWMK
