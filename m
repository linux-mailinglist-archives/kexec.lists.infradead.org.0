Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1145EE7A87
	for <lists+kexec@lfdr.de>; Mon, 28 Oct 2019 21:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R3DJ9X2X2SE3gj4gqUCnUcoBIGjc+FtSU2BsCo+2u4=; b=kL8GzzG4Q1nKcw
	wRZDzo7n7HS3SYkG888q5pT+faSpMHUtfDyQH9eaO5t5HZoud4z84J3pNjPagO2amcT7W0YEv9ySQ
	uK8cYuxmJlbVMywOfDCfdfiBiifACGHUyOVpY59dnc4DE2ty7IQItovFVH30gu04uHefq6GQMlxBl
	IRKH5XqeQqqQh50VGP8UGmUIFz9EiGNhn0bReKEwblFR6+xDr75hjg6NtFuibAhyIhMnXf9wiY+hM
	E5zuBGpg1HOImE+uMY13WDgeIA0RuoQxV/UfAOhagcr2U9ZgcY4mDdiAdpnzl3eXV1YUU5thlaJ0R
	OylkfoNKnNhc3BE9ng7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPC0Z-0001hK-Vk; Mon, 28 Oct 2019 20:52:59 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPC0V-0001gd-PV
 for kexec@lists.infradead.org; Mon, 28 Oct 2019 20:52:57 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x9SKqq1n004645
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 29 Oct 2019 05:52:52 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9SKqq9A020041;
 Tue, 29 Oct 2019 05:52:52 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9SKqqFI004046; 
 Tue, 29 Oct 2019 05:52:52 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-265450;
 Tue, 29 Oct 2019 05:49:34 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Tue,
 29 Oct 2019 05:49:34 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: RE: Makedumpfile help for 5.4.0.rc3 : Arm
Thread-Topic: Makedumpfile help for 5.4.0.rc3 : Arm
Thread-Index: AQHViEDZSq812Kxm4UCQ/dmdPZPK46dk4M2AgADTPwCACtv74A==
Date: Mon, 28 Oct 2019 20:49:33 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
 <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
In-Reply-To: <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.134.177]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_135256_062674_ACF16925 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gSSBhbSB3
b3JraW5nIG9uIHRoZSBjaGFuZ2VzIGluIHRoZSB2bWNvcmVpbmZvIGFmdGVyIHRoZSA1Mi1iaXQg
VkENCj4gPiA+IGNoYW5nZXMgZnJvbSBTdGV2ZSB3ZXJlIGFjY2VwdGVkIGluIExpbnV4IDUuNC1y
YzEgKCJTdXBwb3J0IGZvciA1Mi1iaXQNCj4gPiA+IHZpcnR1YWwgYWRkcmVzc2luZyBpbiBrZXJu
ZWwgc3BhY2XigJ0pLg0KPiA+DQo+ID4NCj4gPiAgICBJIGRvbuKAmXQgc2VlIGEgY29tbWl0IHdp
dGggdGhpcyB0aXRsZSBpbiBsaW51eC1zdGFibGUgIDsgIENvdWxkIHlvdSBiZSBhIGxpdHRsZSBt
b3JlIHNwZWNpZmljIHdoYXQNCj4gZmlsZSAgdGhhdCB3YXMgYXBwbGllZCB0byA/DQo+IA0KPiBZ
b3UgY2FuIGhhdmUgYSBsb29rIGF0IHRoZSBmb2xsb3dpbmcgY29tbWl0IChhbmQgZGVwZW5kZW5j
aWVzKSBpbg0KPiBMaW51cydzIHRyZWUgKGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQpDQo+IHdoaWNoIGludHJvZHVjZWQgNTIt
Yml0IGtlcm5lbCBWQXMgZm9yIGFybTY0IGFyY2hpdGVjdHVyZToNCj4gDQo+IGNvbW1pdCBiNmQw
MGQ0N2U4MWE0OWY2Y2Y0NjI1MThjMTA0MDhmMzdhM2U2Nzg1DQo+IEF1dGhvcjogU3RldmUgQ2Fw
cGVyIDxzdGV2ZS5jYXBwZXJAYXJtLmNvbT4NCj4gRGF0ZTogICBXZWQgQXVnIDcgMTY6NTU6MjIg
MjAxOSArMDEwMA0KPiANCj4gICAgIGFybTY0OiBtbTogSW50cm9kdWNlIDUyLWJpdCBLZXJuZWwg
VkFzDQoNClRoYW5rIHlvdSBmb3Igd29ya2luZyBvbiB0aGlzLg0KDQpJJ3ZlIGFsc28gaGFkIGEg
bG9vayBhdCB0aGVtLCBhbmQgbXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHdlIG5lZWQNCmluIHZt
Y29yZWluZm8gYXQgbGVhc3Q6DQoNCi0gVENSX0VMMS5UMVNaIChhbG1vc3QgZXF1YWxzIHRvIHZh
Yml0c19hY3R1YWwpIHRvIGRldGVybWluZToNCiAgbyBQQUdFX09GRlNFVA0KICBvIHdoZXRoZXIg
dGhlIGtlcm5lbCBoYXMgdGhlICJmbGlwcGVkIiBsaW5lYXIgbWFwIGFuZCB0aGUgb3RoZXJzLg0K
ICAgIFdlIG5lZWQgYSBmaXggdG8gX19wYSgpIHdpdGggaXQuIChzZWUgdGhlIHBhdGNoIGJlbG93
KQ0KDQotIFBBX0JJVFMgb3IgTUFYX1BIWVNNRU1fQklUUyB0byBkZXRlcm1pbmU6DQogIG8gd2hl
dGhlciBTUEFSU0VNRU1fRVhUUkVNRSBvciBub3QsIGluIGlzX3NwYXJzZW1lbV9leHRyZW1lKCkN
CiAgbyB3aGV0aGVyIHRoZSBrZXJuZWwgaGFzIDQ4LWJpdCBvciA1Mi1iaXQgUEEgdG8gc3dpdGNo
DQogICAgdGhlIGNhbGN1bGF0aW9uIG9mIHB0ZS10by1wYWRkci4gKHRoaXMgbWlnaHQgYmUgdW5u
ZWNlc3Nhcnk/KQ0KDQpJcyB0aGlzIHJpZ2h0Pw0KDQpBbmQgd3JvdGUgYSB2ZXJ5IGRyYWZ0IHBh
dGNoLCB3aGljaCB3b3JrcyBvbiBhIDUuNC1yYzQga2VybmVsIHRoYXQNCkkgbW9kaWZpZWQgdG8g
aGF2ZSBOVU1CRVIodmFiaXRzX2FjdHVhbCkgYW5kIE5VTUJFUihNQVhfUEhZU01FTV9CSVRTKSwN
CndpdGggVkFfQklUUz00OCBjb25maWcgb3IgVkFfQklUUz01MiBjb25maWcgcnVubmluZyBpbiA0
OC1iaXQgbW9kZS4NCmh0dHBzOi8vZ2l0aHViLmNvbS9rLWhhZ2lvL21ha2VkdW1wZmlsZS9jb21t
aXQvZmQ5ZDg2ZWEwNWIzOGU5ZWRiYjhjMGFjM2ViZDYxMmQ1ZDQ4NWRmMw0KDQooSSBkb24ndCBp
bnRlbmQgdG8gZXhwb3J0IHRoZW0gYXMgdGhleSBhcmUsIGl0J3MganVzdCBmb3IgYW4gZXhwZXJp
bWVudC4NCkFuZCBubyBzdXBwb3J0IGZvciAtLW1lbS11c2FnZSBvcHRpb24sICJyZWFsIiA1Mi1i
aXQgUEEsIGFuZCBzbyBvbi4pDQoNCkFzIGZvciBNQVhfUEhZU01FTV9CSVRTLCBJIGRvbid0IHN0
aWNrIHRvIGV4cG9ydCBpdCBmb3IgYWxsIGFyY2hpdGVjdHVyZXMsDQphbHRob3VnaCBJIHRvbGQg
eW91IHRoYXQgaXQgd291bGQgYmUgYmV0dGVyIHRvIGRvIHNvIGluIHRoZSBwYXN0Lg0KSWYgaXQn
cyBoYXJkIHRvIGRvIHNvLCBpdCdzIGZpbmUgd2l0aCBtZSB0byBleHBvcnQgaXQgb3Igc29tZXRo
aW5nIHNpbWlsYXINCm9ubHkgZm9yIGFybTY0IGZvciBub3cuLg0KDQpZb3VyIHRob3VnaHRzPw0K
DQpUaGFua3MsDQpLYXp1DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
