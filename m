Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2F4146F31
	for <lists+kexec@lfdr.de>; Thu, 23 Jan 2020 18:08:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkGd1Ac5WqDVrvrELntMXkmjozfvh4SooTsIM+m1Dpg=; b=m1caPYODP7lfKe
	TJqLG0rbSZ3SSPGeb7lJle6zNSuPU4CKxMccTi0BvtITNeIs8XYkdd5oob13cXZnfsBiyt+kvSb3J
	D1bbQNueZ1KQHxFmig+jjfKEDzRLB3ssmcY4RLWNNzg/obhyuXL6gDSwXFOXAhDrISFpvfAlbT3rS
	15wk3J3oxtwd+2gmZwY1n9L1vMBCIEr5PBX7qEhHVmf6TuXafYKLFBfpbR4bFMc79CFK0Whwsm0Ha
	V0zGUK3P+0EhUXk5NpmxdwREzhKXGoBK0HGiMjYgmIt+twYALACEpklG+5qikbsJrGv8Pj68qOxlq
	DqQOPATPOjrvHEt2e2NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufxY-0005iS-27; Thu, 23 Jan 2020 17:08:00 +0000
Received: from mail-eopbgr1300083.outbound.protection.outlook.com
 ([40.107.130.83] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufxU-0005hW-JZ
 for kexec@lists.infradead.org; Thu, 23 Jan 2020 17:07:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iFg2yt8lRCkAOmQo0sVnVu0IwbtUFAROpXHK5llpvPN31AVyodxF/FPhLWAfYIu3PRN7eeqbVZNZkEugJPC2+8HrhcNrToDf+ex6AXAmFaWpkJNv2LldybG+H4ohP7TsGtP9RLV51v6718gJ0UgvaIgSMlvnzN1DCpON93jPjGescaR6ib+pskmNZ83p58ImSAmy0EKMPsG3K33XPY3Jk2Nyj17ru+8FE1be9KvO541tnVR6If8GaJiExXhYrB4giNc/0RPwYrofaE8oQAXbDVvKaMeTJr9oed95G8y2VXmYGGlHFdgYu6LUY2TpQFc2xC6xR8npgvUBYpvrSQPN3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fTDzUiWASGGKzWmAkO2flZZQsq7CcbJkdSShoaTq4YE=;
 b=gPxKwwgfBj/bPXhUA48DehwIWBHZtKI9lMawDWYy/+Eu6UA8xXYYp+FRqBTO/5FFXrqhvbZPrPG9Isfv/xx5smokq0OucO8G37vMoOfUAvhk9Kg84R3E37eWsufz1Bd3bxvwdJG9ItS7PXZmsBN89q7ZcqHuLnUDAlBpIZvAHEj15kGbSKA9RZY8eAIUm8ZLdQz0je5plJp3QwwcJhg5OivQyzdNYnPpTL7NGYhUvmchDPfcLeWyGz7+BBVEDEzYp82f1i4mo9PYttQ1n4/rxDgpCnwuaV1q16Aygmo8p+1LKilicwgbiNCEPp+aao3TJkngBWm8D9nQnSJ5M/yPwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fTDzUiWASGGKzWmAkO2flZZQsq7CcbJkdSShoaTq4YE=;
 b=FMyealVtOfZTJdMNHTYnj6f+l3X5xmEu7OuSP2e9OfW+PWwXww3tvp1VVC9gcrbZMUqvKOiCb+0tjfgC+YXmtG/EgLWgyva9QuEAwSEolLlDDCgxdBD4VrUebOMFcmvTKNv0VPjpy2umK+U85KeIupoAUxuxJRjKhaaHcT3QlYw=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB2969.jpnprd01.prod.outlook.com (20.177.98.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Thu, 23 Jan 2020 17:07:50 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 17:07:50 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: piliu <piliu@redhat.com>, Baoquan He <bhe@redhat.com>, David Hildenbrand
 <david@redhat.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQ
Date: Thu, 23 Jan 2020 17:07:50 +0000
Message-ID: <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
In-Reply-To: <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5c0b53a-f39f-4ff6-fad5-08d7a026c6f5
x-ms-traffictypediagnostic: TY2PR01MB2969:
x-microsoft-antispam-prvs: <TY2PR01MB296901155B1C39E7C51BBD85DD0F0@TY2PR01MB2969.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39850400004)(396003)(346002)(199004)(189003)(186003)(316002)(2906002)(81156014)(71200400001)(8936002)(7416002)(81166006)(8676002)(54906003)(53546011)(6506007)(55016002)(478600001)(9686003)(110136005)(66556008)(5660300002)(66476007)(66946007)(26005)(76116006)(64756008)(66446008)(33656002)(7696005)(4326008)(85182001)(86362001)(52536014)(317694003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB2969;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aqwHve8HGZFYHFsprTRxIY6t/p1JV1c3xK9T5CaIWHMbJB10j5PieQs0a1HBduF5S1XrZwwWPPX9E0/NdIvSji622bn5qGaR/zmSmx7tDc+dIW1/xYca+BVqOyGJMkIuJtEcxi+0OgNSkZGcq6TR6c1Za3KXzWs7D3lJFedmwF19fvOniLjv5iXV1DHW65bWNxmO3HMzXoGQJ82fwFA144rZNS7ZLm2ShfyQSSUHkDno6cuv/g1fdnY5meojErXByUFfP+XnM1De3PIRGt0ntHQv5a7sVmFbrWw7vLwlq/I0jhVomDJ30q6RBzyvGoVTiApFCt8MknKR2Z2C3UsA+qtYYb0DYWQ5/GFvc2XLNAyNzpE6+L6ZraDVUdWdXxHRvK2Jili+R0X3+q2igZU5a36S8bEP6Or3WzHg3kq/u+hnFt2SrG+/FIPE1CG1JxkrzcUF76hFHkgZv7ki/ewspJLPs2Z8gctvljdfPneF/3/X0oyablQqbVCngPUZzYnm
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5c0b53a-f39f-4ff6-fad5-08d7a026c6f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 17:07:50.1296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ivhquOFkq1Qpplw5i8EV51OSu7mhtsBPE0YewdtJ4uz6ALiUwmzlL4MBbKsjUGkP4tdvHhnuNsWAvZiFGDCxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB2969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_090756_708162_BF7A6159 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.83 listed in list.dnswl.org]
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
Cc: "cascardo@canonical.com" <cascardo@canonical.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgUGluZ2ZhbiwNCg0KU29ycnksIEkgaGFkIGJlZW4gYnVzeSwgdGhlbiB3YXMgbG9va2luZyBp
bnRvIGl0cyBoaXN0b3J5IGEgYml0Lg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IE9uIDAxLzIwLzIwMjAgMDQ6NTkgUE0sIEJhb3F1YW4gSGUgd3JvdGU6DQo+ID4gT24gMDEvMjAv
MjAgYXQgMDk6MzNhbSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6DQo+ID4+DQo+ID4+DQo+ID4+
PiBBbSAyMC4wMS4yMDIwIHVtIDAzOjI1IHNjaHJpZWIgUGluZ2ZhbiBMaXUgPHBpbGl1QHJlZGhh
dC5jb20+Og0KPiA+Pj4NCj4gPj4+IO+7v0FmdGVyIGtlcm5lbCBjb21taXQgYmE3MmI0YzhjZjYw
ICgibW0vc3BhcnNlbWVtOiBzdXBwb3J0IHN1Yi1zZWN0aW9uDQo+ID4+PiBob3RwbHVnIiksIHdo
ZW4gaG90LXJlbW92ZWQsIHNlY3Rpb25fbWVtX21hcCBpcyBzdGlsbCBlbmNvZGVkIHdpdGggc2Vj
dGlvbg0KPiA+Pj4gc3RhcnQgcGZuLCBub3QgTlVMTC4gVGhpcyBicmVhayB0aGUgY3VycmVudCBt
YWtlZHVtcGZpbGUuDQoNCkNvdWxkIHlvdSBhZGQga2VybmVsIHZlcnNpb24gd2hpY2ggdGhpcyBz
dGFydGVkIGFuZCBlcnJvciBtZXNzYWdlLA0KaWYgcG9zc2libGUsIGZvciBzb21lb25lIGhpdHRp
bmcgdGhpcyBpc3N1ZSB0byBmaW5kIHRoZSBwYXRjaC4NCg0KPiA+Pj4NCj4gPj4+IFdoYXRldmVy
IHNlY3Rpb25fbWVtX21hcCBjb2RpbmcgaW5mbyBhZnRlciBob3QtcmVtb3ZlZCwgaXQgaXMgcmVs
aWFibGUNCj4gPj4+IGp1c3QgdG8gd29yayBvbiBTRUNUSU9OX01BUktFRF9QUkVTRU5UIGJpdC4g
Rml4aW5nIG1ha2VkdW1wZmlsZSBieSB0aGlzDQo+ID4+PiB3YXkuDQo+ID4+Pg0KPiA+Pj4gU2ln
bmVkLW9mZi1ieTogUGluZ2ZhbiBMaXUgPHBpbGl1QHJlZGhhdC5jb20+DQo+ID4+PiBUbzoga2V4
ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+Pj4gQ2M6IEthenVoaXRvIEhhZ2lvIDxrLWhhZ2lv
QGFiLmpwLm5lYy5jb20+DQo+ID4+PiBDYzogQmFvcXVhbiBIZSA8YmhlQHJlZGhhdC5jb20+DQo+
ID4+PiBDYzogRGF2aWQgSGlsZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+DQo+ID4+PiBDYzog
QW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4NCj4gPj4+IENjOiBEYW4g
V2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4NCj4gPj4+IENjOiBPc2NhciBTYWx2
YWRvciA8b3NhbHZhZG9yQHN1c2UuZGU+DQo+ID4+PiBDYzogTWljaGFsIEhvY2tvIDxtaG9ja29A
a2VybmVsLm9yZz4NCj4gPj4+IENjOiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4NCj4gPj4+IC0tLQ0K
PiA+Pj4gbWFrZWR1bXBmaWxlLmMgfCA2ICstLS0tLQ0KPiA+Pj4gMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1naXQgYS9t
YWtlZHVtcGZpbGUuYyBiL21ha2VkdW1wZmlsZS5jDQo+ID4+PiBpbmRleCBlMjkwZmJkLi5hYjQw
YTU4IDEwMDY0NA0KPiA+Pj4gLS0tIGEvbWFrZWR1bXBmaWxlLmMNCj4gPj4+ICsrKyBiL21ha2Vk
dW1wZmlsZS5jDQo+ID4+PiBAQCAtMzQwNiw4ICszNDA2LDYgQEAgc2VjdGlvbl9tZW1fbWFwX2Fk
ZHIodW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nICptYXBfbWFzaykNCj4gPj4+ICAg
IG1hcCA9IFVMT05HKG1lbV9zZWN0aW9uICsgT0ZGU0VUKG1lbV9zZWN0aW9uLnNlY3Rpb25fbWVt
X21hcCkpOw0KPiA+Pj4gICAgbWFzayA9IFNFQ1RJT05fTUFQX01BU0s7DQo+ID4+PiAgICAqbWFw
X21hc2sgPSBtYXAgJiB+bWFzazsNCj4gPj4+IC0gICAgaWYgKG1hcCA9PSAweDApDQo+ID4+PiAt
ICAgICAgICAqbWFwX21hc2sgfD0gU0VDVElPTl9NQVJLRURfUFJFU0VOVDsNCj4gVGhpcyBzaG91
bGQgYmUgYSB0cmljayB0byBsZXQgbWFwPT0weDAgc3Vydml2ZSB0aGUgbG9naWMNCj4gCQkJaWYg
KCEobWFwX21hc2sgJiBTRUNUSU9OX01BUktFRF9QUkVTRU5UKSkgew0KPiAJCQkJcmV0dXJuIEZB
TFNFOw0KPiAJCQl9DQo+IGluIHZhbGlkYXRlX21lbV9zZWN0aW9uKCkuDQo+ID4+DQo+ID4+IFdo
eSB3YXMgdGhhdCBhZGRlZCBpbiB0aGUgZmlyc3QgcGxhY2U/IFRoaXMgbG9va3MgbGlrZSBkb21l
IGNvbXBhdCBoYW5kbGluZyB0byBtZS4gQXJlIHdlIHN1cmUgd2UgY2FuDQo+IHJlbW92ZSBpdD8N
Cj4gVGhlIGxvZ2ljIGludHJvZHVjZWQgYnkgY29tbWl0IDE0ODc2YzQ1YWVmICgiW1BBVENIIG1h
a2VkdW1wZmlsZV0gaGFuZGxlDQo+IG1lbV9zZWN0aW9uIGFzIGVpdGhlciBhIHBvaW50ZXIgb3Ig
YW4gYXJyYXkiKQ0KPiBDb21iaW5pbmcgc2VjdGlvbl9tZW1fbWFwX2FkZHIoKSBhbmQgdGhlIGZv
bGxvd2luZyBsb2dpYyBpbg0KPiB2YWxpZGF0ZV9tZW1fc2VjdGlvbigpDQo+IGlmIChtZW1fbWFw
ID09IDApIHsNCj4gCW1lbV9tYXAgPSBOT1RfTUVNTUFQX0FERFI7DQo+IH0NCj4gDQo+IEkgcmVh
Y2hlZCB0aGUgc2FtZSBjb25jbHVzaW9uIGFzIEJhb3F1YW4ncy4NCj4gPg0KPiA+DQo+ID4gVGhl
IG9yaWdpbmFsIGNvZGUgYXNzdW1lcyB0aGF0IHRoZXJlIGFyZSBvbmx5IHR3byBraW5kcyBvZiBt
ZW1fc2VjdGlvbiwNCj4gPiBvbmUgaXMgZW1wdHkgdmFsdWUsIHRoZSBzZWNvbmQgaXMgYSBwcmVz
ZW50IG9uZS4gVGhpcyByZW1vdmluZyBiZWhhdmVzDQo+ID4gdGhlIHNhbWUgYXMgdGhlIG9sZCBj
b2RlLCBJIGRvbid0IHNlZSBhIHByb2JsZW0gd2l0aCBpdC4NCj4gPg0KPiA+IEkgdHJpZWQgdG8g
dW5kZXJzdGFuZCB0aGUgY29kZSwgYnV0IEkgZG9uJ3Qga25vdyB3aHkgaXQgbmVlZCBjYWxsDQo+
ID4gdmFsaWRhdGVfbWVtX3NlY3Rpb24oKSB0d2ljZSBhbmQgY29tcGFyZSB0aGUgcmV0dXJuZWQg
dmFsdWUuDQo+IEkgdGhpbmsgaXQgY291bGQgYmUgaWYvZWxzZSwgbm8gbmVlZCB0byBjYWxsIHR3
aWNlLg0KDQpJdCBsb29rcyB0byBtZSB0aGF0IGNvbW1pdCAxNDg3NmM0NWFlZiAoIltQQVRDSCBt
YWtlZHVtcGZpbGVdIGhhbmRsZSBtZW1fc2VjdGlvbg0KYXMgZWl0aGVyIGEgcG9pbnRlciBvciBh
biBhcnJheSIpIHdhcyBpbnRlbmRlZCB0byBzdXBwb3J0IGtlcm5lbHMgd2hpY2ggaGFkDQogIDgz
ZTNjNDg3MjlkOSAoIm1tL3NwYXJzZW1lbTogQWxsb2NhdGUgbWVtX3NlY3Rpb24gYXQgcnVudGlt
ZSBmb3IgQ09ORklHX1NQQVJTRU1FTV9FWFRSRU1FPXkiKQ0KYW5kIGRpZCBub3QgaGF2ZQ0KICBh
MGIxMjgwMzY4ZDEgKCJrZHVtcDogd3JpdGUgY29ycmVjdCBhZGRyZXNzIG9mIG1lbV9zZWN0aW9u
IGludG8gdm1jb3JlaW5mbyIpLg0KDQpBcHBhcmVudGx5IHRoZXJlIHdlcmUgc29tZSByZWxlYXNl
ZCBVYnVudHUga2VybmVscyBsaWtlIHRoaXMuDQoNClNvLCBpZiB3ZSBuZWVkIHRoYXQgbG9naWMs
IHlvdXIgcGF0Y2ggc2VlbXMNCi0gc3VwcG9ydCBrZXJuZWxzIHdoaWNoIHNlY3Rpb25fbWVtX21h
cCBpcyBub24tTlVMTCBmb3IgaG90LXJlbW92ZWQgbWVtb3J5LA0KLSBidXQgbWlnaHQgaW5jcmVh
c2UgdGhlIHBvc3NpYmxpdHkgb2YgZmFsc2UtcG9zaXRpdmUuDQoNCkkgdGhpbmsgdGhpcyBpcyBh
IHRyYWRlb2ZmIGJldHdlZW4gdGhlIGFib3ZlIHR3bywgYnV0IHRoZSBsYXR0ZXIgd291bGQgYmUN
CnNtYWxsIGVub3VnaC4gIEFuZCBJJ20gdGVzdGluZyB0aGUgcGF0Y2ggYW5kIE9LIHdpdGggMTAg
dm1jb3JlcyBzbyBmYXIuDQoNCj4gQ2MgVGhhZGV1IExpbWEgZGUgU291emEgQ2FzY2FyZG8sIHdo
byBjb250cmlidXRlcyB0aGUgb3JpZ2luYWwgY29kZSwgYW5kDQo+IG1heSBoYXZlIHNvbWUgaWRl
YSBhYm91dCBpdC4NCg0KU28gaWYgQ2FzY2FyZG8gZG9lc24ndCBoYXZlIGFueSBvYmplY3Rpb24s
IEkgd2lsbCBhY2NlcHQuDQoNClRoYW5rcywNCkthenUNCg0KUC5TLiBNeSBlbWFpbCBhZGRyZXNz
IGhhcyBiZWVuIGNoYW5nZWQgdG8gay1oYWdpby1hYkBuZWMuY29tLg0KUGxlYXNlIHNlbmQgZW1h
aWwgdG8gdGhpcyBhZGRyZXNzIGluIHRoZSBmdXR1cmUuICBUaGFua3MuDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4
ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2tleGVjCg==
