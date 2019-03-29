/**
 * Part of a course on Hyperledger Fabric:
 * http://ACloudFan.com
 *
 * Use this as a template for your own unit test cases
 */
'use strict';
var assert = require('chai').assert;


const utHarness = require('../../../courseRepo/HLF-Fabric-API-master/ut-harness');

// This points to the model project folder
var modelFolder = '/home/achliopa/workspace/udemy/hyperledgerFabric/myCode/test-bna';

var adminConnection = {};
var businessNetworkConnection = {};
var bnDefinition = {};

// Synchronous call so that connections can be established
before((done) => {
    utHarness.debug = false;
    utHarness.initialize(modelFolder, (adminCon, bnCon, definition) => {
        adminConnection = adminCon;
        businessNetworkConnection = bnCon;
        bnDefinition = definition;
        done();
    });
});

const nameSpace = 'test';
const resourceName = 'SampleAsset';

// Test Suite # 1
describe('Sample Asset Add & Check', () => {

    // Synchronous
    beforeEach((done) => {
        // Move the initialize here if you would like to
        // initialize runtime everytime before each test
        // case
        done();
    });

    // Test Case # 1
    it('should have 1 asset instance with value=10', () => {
        let registry = {};
        // Add an asset
        // Get the asset registry using the BN Connection
        return businessNetworkConnection.getAssetRegistry(nameSpace+'.'+resourceName).then((reg)=>{
            registry = reg;
            // Get the factory using the BN Definition
            const factory = bnDefinition.getFactory();
            // Create the instance
            let sampleAsset = factory.newResource(nameSpace,resourceName,'SA-1');
            sampleAsset.value=10;
            // Add to Registry
            return registry.add(sampleAsset);
        }).then((asset)=>{
            // Assert
            assert.equal(asset.value,'1','Value not equal or undefined');
        }).catch((error)=>{
            console.log(error);
        });
    });

    // Test Case # 2
    it('should have more that 2 registry', () => {
        // Your test code goes here

        // expression in assert
        assert(true);
    });
});


