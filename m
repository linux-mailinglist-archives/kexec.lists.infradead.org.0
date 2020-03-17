Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AA21890C0
	for <lists+kexec@lfdr.de>; Tue, 17 Mar 2020 22:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wf59bzOB5PmeWcIdg+YEMwEAY2onr1kQ4QXdq4bgRxI=; b=KbLx1SzU416kNM
	HKCkG83btFV/jMUtR/f5LHK3EgP0ZGM6vvygVQ1dtVRKM6gYHE+fgAWmCUIHPzyo8vj0qcx+5pANp
	/wij3k85iQF8J0TeHksfX7wkTubPszLXl7+/aLKySNxeWPivog+bI69Sz/AFUU+6Hm/uiP1Uwfvav
	sYe9axthVUZgX693bJ3EgQQEZ/WCMofMnnngMoLxWt24vfgVuZ3Y6+Qtqn1OZAO7Iz35/WhNzyVSb
	U0sZh7dYdOP7o1AxS5TtUuocb3j0lnriZGtuTRCEwRRJALkqiiDfqKFp7zpKGS6YfF+gUwHUXMSi0
	PDXfzOZGZws6MMX+CBEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEK5x-0007bM-30; Tue, 17 Mar 2020 21:49:53 +0000
Received: from mail-sg2apc01on0619.outbound.protection.outlook.com
 ([2a01:111:f400:febd::619]
 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEK5s-0007ao-Mc
 for kexec@lists.infradead.org; Tue, 17 Mar 2020 21:49:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmiizVloDHs2Meo1lXzg7h+6Qh2igmGXOwsCdolWg5L68vmkANc71lXOoT3QLypIegsme2jpdl04rFvXaNO6nBqOpjeAMWNvBSaTLrsOj0KFq9MSQ3I3oN8hcptQKohZy05P8ybb6wJ6z5v+LKVulyvQYVfMtdQajIBMVSitsvGI6a5XTfchBeS7egGQCH3+yDZlspKsuooJ1DXf58HcozdZiBLUuZkFmvJ83J2JRMGnZ7jzjAQvHTnnI2QmTK22FMR0OHW5vk/hVytfoAzUe8zVU2iqXOzyJs2tYSOC/LDRY2EZ0shbnDlng3HND0zguxtpQZrprlHHYeHoJztwdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zmlcMfqBs3j0utUj+cfigdX7UYVAFuX2PNOKU6mE5Qc=;
 b=IQ2P9ecQqgYR9pj6Elpm7hjsLb2vYTRHVAPTlZLelEOV549HR2w/pD1QbbL39vG/d5EtriVSefCO0XOZWDZ1AvrKKwVFTRYdoz6R93XIf1vwqJOIpdQraK7wt38YmHu+/J9RjJyNzWWN9a5R/A6o5YzgXotgSC36pIajMl2rPTUiH8Q6baosFO3ov+TvKBLDFom+fMwmjvd8Rr7kY6+I+mrU8xZURftxfXYuAD+ILJ2jyPBGBBVqm7ty6JvkGL/qc7uGmzh8z5iV89jzom+MlraY+rhEl/NfaP6XAv8DyJqvADyNcqu6oqrsQGzrXyiW5BB+kOokMkwmANbILHuwvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zmlcMfqBs3j0utUj+cfigdX7UYVAFuX2PNOKU6mE5Qc=;
 b=hVj0uKtFjQ9Z49o5Yb5fnypF5MOUSEzk8UYqg+eGk4TM1jemEetMAyr4TZ3joFXAX7BqJJ9rK5TVyaBjDPIVrDN/YZCO1R5717eCpD4fJK1kTOWrWTNUfC8FAkhEfXohlh7Z25Lm+mbgAZVVqYS9VI9ZU7VrDmmLFfuE7A6aRMg=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB4187.jpnprd01.prod.outlook.com (20.178.132.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.16; Tue, 17 Mar 2020 21:49:37 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 21:49:36 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Bhupesh Sharma <bhsharma@redhat.com>, =?utf-8?B?TWljaGFsIFN1Y2jDoW5law==?=
 <msuchanek@suse.de>
Subject: RE: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Thread-Topic: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Thread-Index: AQHV+8JlWVe1W8mLAUCfzJ8J0gHHeKhMyygwgABjpoCAAAxJgIAADMqAgAAChQCAAADIoA==
Date: Tue, 17 Mar 2020 21:49:36 +0000
Message-ID: <TY2PR01MB521072EF0F375F2F3A3A9EEFDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20200316183958.20984-1-msuchanek@suse.de>
 <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200317193507.GB25468@kitsune.suse.cz>
 <CACi5LpOiUpr1RE2Af7WnXHwRpmg5zWE35MkppcxitDTdir58Wg@mail.gmail.com>
 <20200317210451.GC25468@kitsune.suse.cz>
 <CACi5LpNN+z7gtpRMMDKTJ_sR0xtONMw-mUmMtbBPnsTauuN0Xg@mail.gmail.com>
In-Reply-To: <CACi5LpNN+z7gtpRMMDKTJ_sR0xtONMw-mUmMtbBPnsTauuN0Xg@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb76648c-ec61-4c1a-7651-08d7cabd163d
x-ms-traffictypediagnostic: TY2PR01MB4187:
x-microsoft-antispam-prvs: <TY2PR01MB4187D49A990308953ADE962FDDF60@TY2PR01MB4187.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(199004)(66556008)(186003)(4326008)(66476007)(110136005)(52536014)(71200400001)(8936002)(86362001)(81166006)(5660300002)(66446008)(76116006)(478600001)(66946007)(33656002)(26005)(2906002)(55016002)(316002)(9686003)(54906003)(6506007)(85182001)(64756008)(7696005)(81156014)(66574012)(8676002)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB4187;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gyB4b+OhorgVvbo9BIBp3p0dHZSZ02yiABGwQ9i5RtDkLJXIrv6dIf4KqETQwnkrcuVBmuOantSnm8qA4l2Xakj0Zg6eGsvcR6BtjmgGrE+mXa27x2AFWzEfK4nNokvowFkqJWjIA54RhZ0CgOi5kA8Il77r6kkW3ftqAJ5f6z/AIaok+DvC6jzzW4KodACSfCmrDxesR0zojNfkID0sO1rwnKsw84W53ig1/qkpAbpR+CjfqZXL2p0jHWuJ+Tf5dGSV6gNsFE8ZLRzt9dUsCs2H+ZYqy9Pk4+Xd/dDkOZtgvCcopDyO7ORGHeO4vrdOAeHzYvcjh5ZGjyQaXvWlSKl9i5TmHwvxMP1EHau+P+aLz+zSd0F0SHwWUZNLKBecpsQuxkqx5GanU66rhREy6yiFO/DQPTGYebGOoSrsat0W/KpsBDf90I4ueosWFNay
x-ms-exchange-antispam-messagedata: qidbuP90Zj0eMLWA25NPdril/8wF4oHIhv7PAK7EdCMmN62c/remc0NiiF44siGQUNjKa8NZKD2tL446SK+97ddMIGBEm8iQDfShWqpCHW0vdpfCRnwwnvUAZ/t0TWwztou8amXHlJvaYUam7X62rQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb76648c-ec61-4c1a-7651-08d7cabd163d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 21:49:36.6361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D7tTITMXK+RTXVtT64CF1/iKnZUy9dMgjV8xI53zho94XvCZi4zRlfkcb8Q+L2brZ+iLcaXsbBnX65S2eS96WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB4187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_144948_804134_62866285 
X-CRM114-Status: GOOD (  31.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:febd:0:0:0:619 listed in]
 [list.dnswl.org]
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
Cc: =?utf-8?B?UGV0ciBUZXNhxZnDrWs=?= <ptesarik@suse.de>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBPbiBXZWQsIE1hciAxOCwgMjAyMCBhdCAy
OjM1IEFNIE1pY2hhbCBTdWNow6FuZWsgPG1zdWNoYW5la0BzdXNlLmRlPiB3cm90ZToNCj4gPg0K
PiA+IE9uIFdlZCwgTWFyIDE4LCAyMDIwIGF0IDAxOjQ5OjA1QU0gKzA1MzAsIEJodXBlc2ggU2hh
cm1hIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMTowNSBBTSBNaWNoYWwg
U3VjaMOhbmVrIDxtc3VjaGFuZWtAc3VzZS5kZT4gd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+IE9u
IFR1ZSwgTWFyIDE3LCAyMDIwIGF0IDAyOjE0OjIyUE0gKzAwMDAsIEhBR0lPIEtBWlVISVRPKOiQ
qeWwviDkuIDku4EpIHdyb3RlOg0KPiA+ID4gPiA+IEhpIE1pY2hhbCwNCj4gPiA+ID4gPg0KPiA+
ID4gPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiA+ID4gUmVwb3J0ZWRseSBvbiBzb21l
IGFybTY0IHN5c3RlbXMgbWFrZWR1bXBmaWxlIGxvb3BzIGZvcmV2ZXIgZXhoYXVzdGluZw0KPiA+
ID4gPiA+ID4gYWxsIG1lbW9yeSB3aGVuIGZpbHRlcmluZyBrZXJuZWwgY29yZS4gSXQgdHVybnMg
b3V0IHRoZSByZWFzb24gaXMgaXQNCj4gPiA+ID4gPiA+IGNhbm5vdCByZXNvbHZlIHNvbWUgYWRk
cmVzc2VzIGJlY2F1c2UgdGhlIFBNRCBtYXNrIGlzIHdyb25nLiBXaGVuDQo+ID4gPiA+ID4gPiBw
aHlzaWNhbCBhZGRyZXNzIG1hc2sgYWxsb3dzIHVwIHRvIDQ4Yml0cyBwbWQgbWFzayBzaG91bGQg
YWxsb3cgdGhlDQo+ID4gPiA+ID4gPiBzYW1lLg0KPiA+ID4gPiA+ID4gSSBzdXBwb3NlIHlvdSB3
b3VsZCBuZWVkIGEgc3lzdGVtIHRoYXQgbmVlZHMgcGh5c2ljYWwgYWRkcmVzc2VzIG92ZXIgMVRC
DQo+ID4gPiA+ID4gPiB0byBiZSBhYmxlIHRvIHJlcHJvZHVjZSB0aGlzLiBUaGlzIG1heSBiZSBl
aXRoZXIgYmVjYXVzZSB5b3UgaGF2ZSBhIGxvdA0KPiA+ID4gPiA+ID4gb2YgbWVtb3J5IG9yIGJl
Y2F1c2UgdGhlIGZpcm13YXJlIG1hcHBlZCBzb21lIG1lbW9yeSBhYm92ZSAxVEIgZm9yIHNvbWUN
Cj4gPiA+ID4gPiA+IHJlYXNvbi4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgU3VjaGFuZWsgPG1zdWNoYW5la0BzdXNlLmRlPg0KPiA+ID4gPiA+ID4gLS0t
DQo+ID4gPiA+ID4gPiAgYXJjaC9hcm02NC5jIHwgMiArLQ0KPiA+ID4gPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4gPiA+ID4NCj4gPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0LmMgYi9hcmNoL2FybTY0LmMNCj4gPiA+ID4g
PiA+IGluZGV4IDQzMTY0Y2NjMzJkNC4uNTRkNjBiNDQwODUwIDEwMDY0NA0KPiA+ID4gPiA+ID4g
LS0tIGEvYXJjaC9hcm02NC5jDQo+ID4gPiA+ID4gPiArKysgYi9hcmNoL2FybTY0LmMNCj4gPiA+
ID4gPiA+IEBAIC04MSw3ICs4MSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIGtpbWFnZV92b2Zm
c2V0Ow0KPiA+ID4gPiA+ID4gICAqIFJlbW92ZSB0aGUgaGlnaGVzdCBvcmRlciBiaXRzIHRoYXQg
YXJlIG5vdCBhIHBhcnQgb2YgdGhlDQo+ID4gPiA+ID4gPiAgICogcGh5c2ljYWwgYWRkcmVzcyBp
biBhIHNlY3Rpb24NCj4gPiA+ID4gPiA+ICAgKi8NCj4gPiA+ID4gPiA+IC0jZGVmaW5lIFBNRF9T
RUNUSU9OX01BU0sgICAoKDFVTCA8PCA0MCkgLSAxKQ0KPiA+ID4gPiA+ID4gKyNkZWZpbmUgUE1E
X1NFQ1RJT05fTUFTSyAgICgoMVVMIDw8IFBIWVNfTUFTS19TSElGVCkgLSAxKQ0KPiA+ID4gPiA+
ID4NCj4gPiA+ID4gPiA+ICAjZGVmaW5lIFBNRF9UWVBFX01BU0sgICAgICAgICAgICAgIDMNCj4g
PiA+ID4gPiA+ICAjZGVmaW5lIFBNRF9UWVBFX1NFQ1QgICAgICAgICAgICAgIDENCj4gPiA+ID4g
PiA+IC0tDQo+ID4gPiA+ID4gPiAyLjIzLjANCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiBUaGVuIEknZCBwcmVmZXIgdG8gcmVtb3ZlIFBNRF9TRUNUSU9OX01BU0sgYW5kIHVzZSBQ
SFlTX01BU0sgaW5zdGVhZC4NCj4gPiA+ID4gPiBJcyBpdCBPSz8gIEtlZXBpbmcgUE1EX1NFQ1RJ
T05fTUFTSyBsb29rcyBhIGxpdHRsZSBjb25mdXNpbmcgdG8gbWUuDQo+ID4gPiA+DQo+ID4gPiA+
IFRoaXMgY29kZSB3aWxsIG5lZWQgdG8gYmUgY2hhbmdlZCBmb3IgNTJiaXQgc3VwcG9ydC4gSXQg
cmVtYWlucyB0byBiZQ0KPiA+ID4gPiBzZWVuIGlmIHRoZSBtYXNrIHdpbGwgYmUgc3RpbGwgdGhl
IHNhbWUgYWZ0ZXIgdGhhdC4gSSB3b3VsZCBnbyB3aXRoIGp1c3QNCj4gPiA+ID4gdGhlIG1pbmlt
YWwgZml4IGZvciBub3cgdG8gbm90IGNvbXBsaWNhdGUgdGhpbmdzLg0KPiA+ID4NCj4gPiA+IEV4
YWN0bHkuIEkgYW0gcGxhbm5pbmcgdG8gc2VuZCBvdXQgdGhlIGxhdGVzdCByZWZyZXNoIG9mIHRo
ZSBrZXJuZWwNCj4gPiA+IGFuZCBtYWtlZHVtcGZpbGUgY2hhbmdlcyBmb3IgNTItYml0IG1ha2Vk
dW1wZmlsZS9jcmFzaCBzdXBwb3J0IHRoaXMNCj4gPiA+IHdlZWsuDQo+ID4gPg0KPiA+ID4gSWYg
d2UgY2FuIHdhaXQgZm9yIHRoZSBzYW1lLCBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciBhcyB0
aGUgY29kZQ0KPiA+ID4gY2hhbmdlcy9uYW1lcyB3b3VsZCBiZSBtb3JlIHN0cmVhbWxpbmVkIGFu
ZCBzaW1pbGFyIHRvIExpbnV4DQo+ID4gPiBjb252ZW50aW9ucy4NCj4gPiA+DQo+ID4gPiBQbGVh
c2UgbGV0IG1lIGtub3cgaWYgdGhhdCBtYWtlcyBzZW5zZS4NCj4gPg0KPiA+IEkgdGhpbmsgYm90
aCBpcyB1c2VmdWwuIFRoaXMgaXMgYSBtaW5pbWFsIHBhdGNoIHRoYXQgY2FuIGJlIGFwcGxpZWQg
dG8NCj4gPiBoaXN0b3JpY2FsIHZlcnNpb25zIG9mIG1ha2VkdW1wZmlsZSBpbiBkaXN0cmlidXRp
b25zLiBUaGlzIHNlZW1zIHRvIGhhdmUNCj4gPiBiZWVuIGJyb2tlbiBmb3IgcXVpdGUgYSB3aGls
ZSBhbHJlYWR5Lg0KDQpJIGFncmVlLg0KDQo+ID4NCj4gPiBBbmQgd2hpbGUgNTJiaXQgc3VwcG9y
dCBpcyBuaWNlIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmUgdG8gdGVzdCBpdCBzbw0KPiA+IGl0
IGlzIG9idmlvdXNseSBub3QgdGhhdCB1c2VmdWwgZm9yIG1lIGFuZCBtYW55IG90aGVyIG1ha2Vk
dW1wZmlsZQ0KPiA+IHVzZXJzLg0KPiANCj4gV2VsbCB0aGUgNTItYml0IGNoYW5nZXMgd2lsbCBz
dGlsbCBzdXBwb3J0IG9sZGVyIENQVXMgd2hpY2ggZG9uJ3QNCj4gc3VwcG9ydCB0aGUgNTItYml0
IEFSTXY4LjIgZXh0ZW5zaW9ucy4NCj4gQWxzbyBhcyB3ZSBkaXNjdXNzZWQgaW4gdGhlIHJldmll
dyBvZiB0aGUgbGFzdCB2ZXJzaW9uLCB0aGV5IHdpbGwNCj4gc3VwcG9ydCBvbGRlciBrZXJuZWwg
KyBtYWtlZHVtcGZpbGUgY29tYmluYXRpb25zIGFzIHdlIG5lZWQgdG8gc3VwcG9ydA0KPiB0aGVt
IGFzIHdlbGwuDQo+IA0KPiBJbi1mYWN0IHRoYXQgd291bGQgYmUgb25lIG9mIHRoZSBtYWpvciBj
aGFuZ2VzIGluIHRoZSBsYXRlc3QgcmVzcGluLg0KPiANCj4gSG93ZXZlciBpZiBLYXp1IGlzIE9r
IHdpdGggdGFraW5nIHRoaXMgZml4LCBJIGhhdmUgbm8gaXNzdWVzIHdpdGggdGhlDQo+IHNhbWUg
YXMgd2VsbC4NCg0KT0ssIEknbGwgbWVyZ2UgdGhpcyBwYXRjaCBhcyBpdCBpcy4NCg0KVGhhbmtz
LA0KS2F6dQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
