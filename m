Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CBD131B18
	for <lists+kexec@lfdr.de>; Mon,  6 Jan 2020 23:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6G2ESrhyep5U2asL4xG4um+WwiKJSemWt6QWP+Qx+eA=; b=XSxcjUTrZioo1PGqlBaTWfaQp
	wVrRnMrgVVCOoC1WZ1/AMb/5BIPcyw5QgBcmXED3G+QYn0K7Z3QzYArei8oP7G6rI62Oy6z0jXI9+
	0XMQ1M0fh4zvxpwzhJPRJsidfZzGGoUrzdMIF8govs4YOka6mOOhStnVbUiEMTQ8wPMUpWFuNPOUS
	LH0XgkbAFl0a9jhOD7Go7Z4t8eRzHybfKs0x4zR2Jas5gZS+utTr8U1EiBQ20ja5WUe/HaAQKCmI6
	rA2YbvAvK8CQduLiXU8x07tHNu7Q4yv5KvlpmpLMh7UpaCzocPmskpBcZEBfH0BPhgq2DFjtFbpaM
	cvNfPeiGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioabi-0004at-AX; Mon, 06 Jan 2020 22:12:18 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioabe-0004aS-AP
 for kexec@lists.infradead.org; Mon, 06 Jan 2020 22:12:16 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 006LxBbZ017958;
 Mon, 6 Jan 2020 22:12:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=QOpEPn+HuHt6e2qZiyANN4XQf9Fn05roEVn+DSw/kC0=;
 b=UNRnD+exFJ1u/sbcqrmglQCR1nc+ys7QeQ17Gfv5v5rpeSBkrdKAwCDdkBdqNDFeK0k7
 Bw+01TCDBmGHOkaalzjjxmzHCeJg5yMCpgL6Zm5BlnMSh9zltiqtGMrgwa1629DoDEG6
 6/GUZ5M1xbkdP7AeX6aY5YAPzTmgNzgVev1KFudAtautPRyTXKW3A4NUxzkc5cibClO+
 dy+jtrqW0m/W+nCdUlVAP6p2aXUXcx8hdckXlq5aP0Y7RRprh11095R7EjsIBKhnpTXS
 OgDu5OPMQoZyt1QjrXEx6hxOO4isH/cQWbxp1+Of16HPpK1//v0G4M9u6yIgA5jilYVr uA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xakbqhubj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Jan 2020 22:12:08 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 006LwgUd029137;
 Mon, 6 Jan 2020 22:10:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xb47fx195-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Jan 2020 22:10:07 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 006MA41W018276;
 Mon, 6 Jan 2020 22:10:06 GMT
Received: from [10.149.224.210] (/10.149.224.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Jan 2020 14:10:04 -0800
Subject: Re: [RFC] printing the final constructed kernel command line
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
 <a70d5b14-566e-2fbd-7b2c-3054ccb0bee9@redhat.com>
 <27ef47f0-6e68-df67-d701-9a73cdc79728@oracle.com>
 <CACi5LpO8udqw2ps77LUW-y4zLdbsdq84SGo85WC7m-kNjyEX+g@mail.gmail.com>
From: Eric DeVolder <eric.devolder@oracle.com>
Message-ID: <14f1ecbb-e746-83ce-1e72-3b87dcda75fc@oracle.com>
Date: Mon, 6 Jan 2020 16:10:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACi5LpO8udqw2ps77LUW-y4zLdbsdq84SGo85WC7m-kNjyEX+g@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001060184
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001060184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_141214_496956_3CD05A2B 
X-CRM114-Status: GOOD (  34.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "bhupesh.linux >> Bhupesh SHARMA" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Qmh1cGVzaCwKSSdtIGZpbmRpbmcgbXlzZWxmIHNsYW1tZWQgd2l0aCBvdGhlciB0YXNrcywgaWYg
eW91J2QgbGlrZSB0byBraWNrIHN0YXJ0IHRoaXMgcGF0Y2gsIHRoZW4gcGxlYXNlIApmZWVsIGZy
ZWUhCmVyaWMKCk9uIDEyLzIzLzE5IDEyOjUwIEFNLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiBP
biBUaHUsIERlYyAxOSwgMjAxOSBhdCAxMToyNyBQTSBFcmljIERlVm9sZGVyIDxlcmljLmRldm9s
ZGVyQG9yYWNsZS5jb20+IHdyb3RlOgo+Pgo+PiBCaHVwZXNoLAo+PiBUaGFuayB5b3UuIEZvciB0
aGUgZm9ybWFsIHBhdGNoLCB3b3VsZCB5b3UgYmUgb2sgd2l0aCBhIHR3byBwaGFzZSBhcHByb2Fj
aCwgZmlyc3Qgd2hlcmUgd2UgYWRkIGluCj4+IHRoZSBkYmdwcmludGYoKSwKPiAKPiBTdXJlIEVy
aWMsIEkgdGhpbmsgeW91IGNhbiBzZW5kIHRoZSBwYXRjaCB3aXRoIHRoZSBkYmdwcmludGYoKSBy
aWdodAo+IGF3YXkuIEl0IHNlZW1zIGEgc3RyYWlnaHQgZm9yd2FyZCBjaGFuZ2UgYW5kIHNob3Vs
ZCBiZSBhY2NlcHRhYmxlIHRvCj4gb3RoZXIgcmV2aWV3ZXJzIEkgYmVsaWV2ZS4KPiAKPj4gYW5k
IGZvbGxvd2VkIGxhdGVyIGJ5IGEgY29uc29saWRhdGlvbiBvZiB0aGUgLS1jb21tYW5kLWxpbmUs
IC0tYXBwZW5kLAo+PiAtLXJldXNlLWNtZGxpbmUgb3B0aW9uIGNvZGU/Cj4gCj4gQWN0dWFsbHks
IEkgZGlkIHNvbWUgd29yayBhIGZldyBtb250aHMgYWdvIChvbiB0aGUgcmVxdWVzdCBvZiBhbiBh
cm0zMgo+IGtleGVjLXRvb2xzIHVzZXIpIG9uIHRoaXMgY29uc29saWRhdGlvbiwgYnV0IEkgbmV2
ZXIgZ290IHRoZSB0aW1lIHRvCj4gY29tcGxldGUgdGhlIHNhbWUuCj4gCj4gSSB3aWxsIHRyeSB0
byBmaW5kIG91dCBzb21lIHRpbWUgb3ZlciB0aGlzIHdlZWsgdG8gY29uc29saWRhdGUgdGhlc2UK
PiBmZWF0dXJlcyBhbmQgc2VuZCBhbiBSRkMgcGF0Y2guIEkgd2lsbCBDYyB5b3UgdG8gdGhlIHNh
bWUuIEhvcGVmdWxseQo+IHRoYXQgc2hvdWxkIGRvIHRoZSB0cmljay4KPiAKPiBUaGFua3MsCj4g
Qmh1cGVzaAo+IAo+PiBPbiAxMi8xOS8xOSA3OjM0IEFNLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToK
Pj4+IEhpIEVyaWMsCj4+Pgo+Pj4gT24gMTIvMTkvMjAxOSAxMjozMCBBTSwgRXJpYyBEZVZvbGRl
ciB3cm90ZToKPj4+PiBUaGFua3MgQmh1cGVzaCBmb3IgdGhlIGZlZWRiYWNrLCByZXNwb25zZXMg
YmVsb3chCj4+Pj4gZXJpYwo+Pj4+Cj4+Pj4gT24gMTIvMTcvMTkgMTo1OSBQTSwgQmh1cGVzaCBT
aGFybWEgd3JvdGU6Cj4+Pj4+IEhpIEVyaWMsCj4+Pj4+Cj4+Pj4+IE9uIDEyLzE3LzIwMTkgMDI6
MDIgQU0sIEVyaWMgRGVWb2xkZXIgd3JvdGU6Cj4+Pj4+PiBUaGUgLS1jb21tYW5kLWxpbmUsIC0t
YXBwZW5kLCBhbmQgLS1yZXVzZS1jbWRsaW5lIG9wdGlvbnMgdG8ga2V4ZWMgY2FuCj4+Pj4+PiBi
ZSB1c2VkIGluIGNvbWJpbmF0aW9uIHRvIGNyYWZ0IGEga2VybmVsIGNvbW1hbmQgbGluZSBmb3Ig
YSBrZXJuZWwKPj4+Pj4+IGxvYWRlZCB2aWEga2V4ZWMuIEluIGFkZGl0aW9uLCB0aGUga2V4ZWMg
dG9vbCBtYXkgYWxzbyBtYW5pcHVsYXRlCj4+Pj4+PiBmdXJ0aGVyIHRoZSBjb21tYW5kIGxpbmUs
IGVnLiAgZWxmY29yZWhkciBhZGRpdGlvbi4KPj4+Pj4KPj4+Pj4gVGhhbmtzIGZvciBwcm9wb3Np
bmcgdGhpcyBjaGFuZ2UuIEkgaGF2ZSBzb21lIGNvbW1lbnRzL3F1ZXJpZXMgKHNlZSBiZWxvdyku
Cj4+Pj4+Cj4+Pj4+PiBUbyBhaWQgaW4gZGVidWdnaW5nIGtkdW1wL2tleGVjIHJlbGF0ZWQgaXNz
dWVzLCBpdCB3b3VsZCBiZSBoZWxwZnVsCj4+Pj4+PiBmb3Iga2V4ZWMgdG8gcHJpbnQgdGhlIGZp
bmFsIGNvbnN0cnVjdGVkIGtlcm5lbCBjb21tYW5kIGxpbmUgYXJndW1lbnQuCj4+Pj4+Pgo+Pj4+
Pj4gRm9yIGV4YW1wbGUsIHRoZSBmb2xsb3dpbmcgc2ltcGxlIGNoYW5nZSAoZm9yIGkzODYveDg2
XzY0KToKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51
eC1zZXR1cC5jIGIva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4+Pj4+PiBpbmRl
eCAwNTdlZTE0Li42ZGM0YWRjIDEwMDY0NAo+Pj4+Pj4gLS0tIGEva2V4ZWMvYXJjaC9pMzg2L3g4
Ni1saW51eC1zZXR1cC5jCj4+Pj4+PiArKysgYi9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNl
dHVwLmMKPj4+Pj4+IEBAIC01Nyw2ICs1Nyw4IEBAIHZvaWQgc2V0dXBfbGludXhfYm9vdGxvYWRl
cl9wYXJhbWV0ZXJzX2hpZ2goCj4+Pj4+PiAgICAgICAgY2hhciAqY21kbGluZV9wdHI7Cj4+Pj4+
PiAgICAgICAgdW5zaWduZWQgbG9uZyBpbml0cmRfYmFzZSwgaW5pdHJkX2FkZHJfbWF4Owo+Pj4+
Pj4KPj4+Pj4+ICsgICAgcHJpbnRmKCJGaW5hbCBrZXJuZWwgY21kbGluZTogJyVzJ1xuIiwgY21k
bGluZSk7Cj4+Pj4+PiArCj4+Pj4+Cj4+Pj4+IElmIHdlIHdhbnQgdG8gYWRkIHRoaXMgZm9yIGRl
YnVnZ2luZyBwdXJwb3NlcywgaXRzIGJldHRlciB0byBoYXZlIGRiZ3ByaW50ZigpIGluc3RlYWQg
b2YgcHJpbnRmKCkKPj4+Pj4gaGVyZS4gVGhpcyB3aWxsIG1ha2Ugc3VyZSB0aGF0IHRoZSBkZWJ1
ZyBtZXNzYWdlIGlzIHByaW50ZWQgb25seSB3aGVuICctZCcgZmxhZyBpcyBzcGVjaWZpZWQKPj4+
Pj4gd2hpbGUgY2FsbGluZyBrZXhlYyB1dGlsaXR5IGZyb20gY29tbWFuZC1saW5lLgo+Pj4+Cj4+
Pj4gWWVzISBJIHVzZWQgcHJpbnRmKCkgbWVyZWx5IHRvIHByb3ZpZGUgYW4gZXhhbXBsZSBvZiB3
aGF0IGlzIHBvc3NpYmxlLgo+Pj4KPj4+IE9rLgo+Pj4KPj4+Pj4+ICAgICAgICAvKiBTYXkgSSdt
IGEgYm9vdCBsb2FkZXIgKi8KPj4+Pj4+ICAgICAgICByZWFsX21vZGUtPmxvYWRlcl90eXBlID0g
TE9BREVSX1RZUEVfS0VYRUMgPDwgNDsKPj4+Pj4+Cj4+Pj4+PiByZXN1bHRzIGluIHRoZSBmb2xs
b3dpbmcgb24gYSBzeXN0ZW1kLWJhc2VkIHN5c3RlbSAoZm9ybWF0dGVkIHRvIGZpdAo+Pj4+Pj4g
aW4gNzAgY2hhciBsaW5lcyk6Cj4+Pj4+Pgo+Pj4+Pj4gJSBzeXN0ZW1jdGwgc3RhdHVzIC1sIGtk
dW1wLnNlcnZpY2UKPj4+Pj4+IOKXjyBrZHVtcC5zZXJ2aWNlIC0gQ3Jhc2ggcmVjb3Zlcnkga2Vy
bmVsIGFybWluZwo+Pj4+Pj4gICAgICBMb2FkZWQ6IGxvYWRlZCAoL3Vzci9saWIvc3lzdGVtZC9z
eXN0ZW0va2R1bXAuc2VydmljZTsgZW5hYmxlZDsKPj4+Pj4+ICAgICAgIHZlbmRvciBwcmVzZXQ6
IGVuYWJsZWQpCj4+Pj4+PiAgICAgIEFjdGl2ZTogYWN0aXZlIChleGl0ZWQpIHNpbmNlIE1vbiAy
MDE5LTEyLTE2IDE0OjU5OjIxIEVTVDsKPj4+Pj4+ICAgICAgIDJtaW4gNTNzIGFnbwo+Pj4+Pj4g
ICAgIFByb2Nlc3M6IDE0MDU4IEV4ZWNTdG9wPS91c3IvYmluL2tkdW1wY3RsIHN0b3AgKGNvZGU9
ZXhpdGVkLAo+Pj4+Pj4gICAgICBzdGF0dXM9MC9TVUNDRVNTKQo+Pj4+Pj4gICAgIFByb2Nlc3M6
IDE0MDczIEV4ZWNTdGFydD0vdXNyL2Jpbi9rZHVtcGN0bCBzdGFydCAoY29kZT1leGl0ZWQsCj4+
Pj4+PiAgICAgIHN0YXR1cz0wL1NVQ0NFU1MpCj4+Pj4+PiAgICBNYWluIFBJRDogMTQwNzMgKGNv
ZGU9ZXhpdGVkLCBzdGF0dXM9MC9TVUNDRVNTKQo+Pj4+Pj4KPj4+Pj4+IERlYyAxNiAxNDo1OTox
OCB2bTM2NCBrZHVtcGN0bFsxNDA1OF06IFN0b3BwaW5nIGtkdW1wOiBbT0tdCj4+Pj4+PiBEZWMg
MTYgMTQ6NTk6MTggdm0zNjQgc3lzdGVtZFsxXTogU3RvcHBlZCBDcmFzaCByZWNvdmVyeSBrZXJu
ZWwgYXJtaW5nLgo+Pj4+Pj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0YXJ0
aW5nIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcuLi4KPj4+Pj4+IERlYyAxNiAxNDo1OToy
MSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IEZpbmFsIGtlcm5lbCBjbWRsaW5lOiAnQk9PVF9JTUFH
RT0KPj4+Pj4+ICAgIC92bWxpbnV6LTQuMTQuMzUtMTkwMi43LjMuMS5lbDd1ZWsueDg2XzY0IHJv
IHJoZ2IgcXVpZXQgTEFORz1lbl9VUy5VVEYtOAo+Pj4+Pj4gICAgaXJxcG9sbCBucl9jcHVzPTEg
cmVzZXRfZGV2aWNlcyBjZ3JvdXBfZGlzYWJsZT1tZW1vcnkgbWNlPW9mZiBudW1hPW9mZgo+Pj4+
Pj4gICAgdWRldi5jaGlsZHJlbi1tYXg9MiBwYW5pYz0xMCByb290ZmxhZ3M9bm9mYWlsIGFjcGlf
bm9fbWVtaG90cGx1Zwo+Pj4+Pj4gICAgdHJhbnNwYXJlbnRfaHVnZXBhZ2U9bmV2ZXIgbm9rYXNs
ciBub3ZtY29yZWRkIGRpc2FibGVfY3B1X2FwaWNpZD0wCj4+Pj4+PiAgICBlbGZjb3JlaGRyPTkw
MTQ5MksnCj4+Pj4+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQgc3lzdGVtZFsxXTogU3RhcnRlZCBD
cmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nLgo+Pj4+Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0
IGtkdW1wY3RsWzE0MDczXToga2V4ZWM6IGxvYWRlZCBrZHVtcCBrZXJuZWwKPj4+Pj4+IERlYyAx
NiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IFN0YXJ0aW5nIGtkdW1wOiBbT0tdCj4+
Pj4+Pgo+Pj4+Pj4gYW5kIHRoZSBvdXRwdXQgaXMgYWxzbyBhdmFpbGFibGUgaW4gL3Zhci9sb2cv
bWVzc2FnZXMuCj4+Pj4+Cj4+Pj4+IFNpbmNlIGtkdW1wY3RsIGlzIGEgZGlzdHJpYnV0aW9uIHNw
ZWNpZmljIHNjcmlwdCAoVXNlZCBieSBGZWRvcmEvUkhFTCksIHdoaWNoIGludm9rZXMgJ2tleGVj
Jwo+Pj4+PiB1bmRlciB0aGUgaG9vZCwgd2UgY2FuIGRpc2N1c3MgdGhlIGZlYXR1cmVzIHN1cHBv
cnRlZCBieSAna2V4ZWMnIHJhdGhlciB0aGFuIHRoZSBkaXN0cmlidXRpb24KPj4+Pj4gc3BlY2lm
aWMgc2NyaXB0cyAoZGlzY3Vzc2lvbiByZWdhcmRpbmcgd2hpY2ggYXJlIHByb2JhYmx5IG1vcmUg
c3VpdGVkIHRvIHRoZSBGZWRvcmEga2V4ZWMgbGlzdDoKPj4+Pj4ga2V4ZWNAbGlzdHMuZmVkb3Jh
cHJvamVjdC5vcmcpCj4+Pj4KPj4+PiBBZ3JlZWQsIHRoaXMgUkZDIGlzIGZvciBhIGNoYW5nZSB0
byBrZXhlYywgbm90aW5nIHRoYXQgd3JhcHBlciBzY3JpcHRzIHN1Y2ggYXMga2R1bXBjdGwgYXJl
Cj4+Pj4gaW5zdWZmaWNpZW50IHRvIHByb3ZpZGUgdGhlIGZ1bmN0aW9uYWxpdHkgcmVxdWVzdGVk
Lgo+Pj4+Cj4+Pj4+Cj4+Pj4+PiBUaGVyZSBtaWdodCBhbHNvIGJlIGFuIG9wcG9ydHVuaXR5IHRv
IGNvbnNvbGlkYXRlIGhhbmRsaW5nIG9mIHRoZQo+Pj4+Pj4ga2VybmVsIGNvbW1hbmQgbGluZSwg
YXMgbW9zdCBhcmNoIHRhcmdldHMgaGF2ZSB0aGUgLS1jb21tYW5kLWxpbmUsCj4+Pj4+PiAtLWFw
cGVuZCwgYW5kIC0tcmV1c2UtY21kbGluZSBvcHRpb25zLCB0aG91Z2ggZWFjaCBhcmNoIGluZGVw
ZW5kZW50bHkKPj4+Pj4+IGNvZGVzIHRoZSBzdXBwb3J0IGZvciB0aGVzZSBvcHRpb25zLgo+Pj4+
Pgo+Pj4+PiBUaGlzIHNlZW1zIGxpa2UgYSBnb29kIGlkZWEsIG1vcmUgb24gdGhlIHNhbWUgYmVs
b3cgLi4uCj4+Pj4+Cj4+Pj4+PiBOb3RlOiBTaW1wbHkgcHJpbnRpbmcgdGhlIGNtZGxpbmUgaW4g
c2NyaXB0cyBzdWNoIGFzIGtkdW1wY3RsIG1heSBub3QKPj4+Pj4+IHJlc3VsdCBpbiB0aGUgc2Ft
ZSBvcmRlcmluZywgYW5kIHdpbGwgb21pdCBhbnkgYWRkaXRpb24gbWFkZSBpbnRlcm5hbGx5Cj4+
Pj4+PiBieSBrZXhlYywgc3VjaCBhcyB0aGUgZWxmY29yZWhkci4KPj4+Pj4+Cj4+Pj4+PiBJIHBy
b3Bvc2UgdGhlIGFkZGl0aW9uIG9mIGFuIG9wdGlvbiB0byBrZXhlYywgLS1wcmludC1rY2wgKHRv
IG1pcnJvcgo+Pj4+Pj4gLS1wcmludC1ja3IpLCB0aGF0IHdvdWxkIGNvbnRyb2wgc3VjaCBwcmlu
dGluZywgYXMgd2VsbCBhcyB0aGUgbmVlZGVkCj4+Pj4+PiBwZXIgYXJjaCBjb25kaXRpb25hbCBw
cmludCBzdGF0ZW1lbnRzIHNpbWlsYXIgdG8gdGhlIGFib3ZlIHRvIHByaW50IHRoZQo+Pj4+Pj4g
ZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZS4KPj4+Pj4KPj4+Pj4gLi4uIEkg
YW0gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHRoZSBhYm92ZSBwb2ludC4gTG9va2luZyBhdCB0aGUg
bGF0ZXN0IGtleGVjLXRvb2xzIG1hbiBwYWdlIChzZWU6Cj4+Pj4+IGdpdDovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vdXRpbHMva2VybmVsL2tleGVjL2tleGVjLXRvb2xzLmdpdCksIEkgY291bGRu
J3QgZmluZCAnLS1wcmludC1ja3InCj4+Pj4+IG9wdGlvbjoKPj4+Pj4KPj4+Pj4gLS1wcmludC1j
a3Itc2l6ZTogUHJpbnQgY3Jhc2gga2VybmVsIHJlZ2lvbiBzaXplLCBpZiBhdmFpbGFibGUuCj4+
Pj4+Cj4+Pj4+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiAnLS1wcmludC1ja3InIGFuZCAn
LS1wcmludC1rY2wnIG9wdGlvbnMgbW9yZS4KPj4+Pgo+Pj4+IFlvdSBwcm9wb3NlZCB1c2luZyBk
YmdwcmludGYoKSBpbiBjb25qdW5jdGlvbiB3aXRoIHRoZSAtZCBvcHRpb247IGFuZCB0aGF0IG1h
a2VzIGdyZWF0IHNlbnNlOyBJCj4+Pj4gaGFkIG5vdCBpbiBteSBlYWdlcm5lc3MgdG8gcHJvZHVj
ZSB0aGlzIFJGQy4KPj4+Cj4+PiBPaywgbm8gcHJvYmxlbS4KPj4+Cj4+Pj4gSW5zdGVhZCwgSSBw
cm9wb3NlZCBhbm90aGVyIG9wdGlvbiAtLXByaW50LWtjbCAoZm9yIHByaW50IGtlcm5lbCBjb21t
YW5kIGxpbmUpIHRvIGNvbmRpdGlvbmFsbHkKPj4+PiBwcmludCB0aGUgaW5mb3JtYXRpb24uIEkg
d2FzIHVzaW5nIC0tcHJpbnQtY2tyIGFzIGFuIGV4YW1wbGUgb2Ygc2ltaWxhciBvcHRpb24gdXNl
ZCB0byBwcmludAo+Pj4+IGluZm9ybWF0aW9uIChpbiB0aGlzIGNhc2UsIHRoZSBjcmFzaCBrZXJu
ZWwgcmVnaW9uKS4gT3RoZXIgdGhhbiBhIHNpbWlsYXIgbmFtaW5nIGNvbnZlbnRpb24sIHRoZXJl
Cj4+Pj4gaXMgbm8gY29ycmVsYXRpb24gYmV0d2VlbiAtLXByaW50LWNrciBhbmQgLS1wcmludC1r
Y2wsIGFuZCBpbmRlZWQgZXZlbiAtLXByaW50LWtjbCBtaWdodCBiZQo+Pj4+IHVuLW5lY2Vzc2Fy
eSBnaXZlbiBkYmdwcmludGYoKS4KPj4+Cj4+PiBTdXJlLCBtYWtlcyBzZW5zZS4KPj4+IEkgdGhp
bmsgeW91IGNhbiBnbyBhaGVhZCBhbmQgcG9zdCBhIGZvcm1hbCBwYXRjaCB3aXRoICdkYmdwcmlu
dGYoKScgYmVpbmcgdXNlZC4gT3IgaWYgeW91IHdhbnQsIEkKPj4+IGNhbiB0cnkgYW5kIHByb3Bv
c2UgYSBzaW1pbGFyIHBhdGNoIGZvciB1cHN0cmVhbSBrZXhlYy10b29scy4KPj4+Cj4+PiBQbGVh
c2UgbGV0IG1lIGtub3cuCj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gQmh1cGVzaAo+Pj4KPj4KPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxp
bmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
